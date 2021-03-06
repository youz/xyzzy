(let ((dir (if *load-pathname*
             (directory-namestring *load-pathname*)
             ".")))
  (load-file (merge-pathnames "simple-test.l" dir))
  (load-test-file (merge-pathnames "nanri-master-change-tests.l" dir))
  (load-test-file (merge-pathnames "lisp-tests.l" dir))
  ;(test-changes)
  (run-all-tests)
  )
