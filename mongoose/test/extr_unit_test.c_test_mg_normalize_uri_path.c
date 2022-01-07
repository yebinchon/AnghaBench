
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_MGNP (char*,int,char*) ;

__attribute__((used)) static const char *test_mg_normalize_uri_path(void) {
  CHECK_MGNP("", 0, "");
  CHECK_MGNP("x", 0, "");
  CHECK_MGNP("/", 1, "/");
  CHECK_MGNP("//", 1, "//");
  CHECK_MGNP("/.", 1, "/");
  CHECK_MGNP("//.", 1, "//");
  CHECK_MGNP("/..", 1, "/");
  CHECK_MGNP("//..", 1, "/");
  CHECK_MGNP("///..", 1, "//");
  CHECK_MGNP("/./", 1, "/");
  CHECK_MGNP("/.//", 1, "//");
  CHECK_MGNP("/./.", 1, "/");
  CHECK_MGNP("/.//.", 1, "//");
  CHECK_MGNP("/foo", 1, "/foo");
  CHECK_MGNP("/foo/", 1, "/foo/");
  CHECK_MGNP("/foo/.", 1, "/foo/");
  CHECK_MGNP("/foo/./", 1, "/foo/");
  CHECK_MGNP("/foo/..", 1, "/");
  CHECK_MGNP("/foo/../", 1, "/");
  CHECK_MGNP("/foo/../bar", 1, "/bar");
  CHECK_MGNP("/foo/../bar/", 1, "/bar/");
  CHECK_MGNP("/foo/../../bar", 1, "/bar");
  CHECK_MGNP("/foo////bar/", 1, "/foo////bar/");

  CHECK_MGNP("/fo%2fo/%2e%2e/%2e/bar", 1, "/fo%2fo/%2e%2e/%2e/bar");
  return ((void*)0);
}
