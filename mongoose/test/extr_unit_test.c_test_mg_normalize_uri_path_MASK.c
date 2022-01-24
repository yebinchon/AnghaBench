#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 

__attribute__((used)) static const char *FUNC1(void) {
  FUNC0("", 0, "");
  FUNC0("x", 0, "");
  FUNC0("/", 1, "/");
  FUNC0("//", 1, "//");
  FUNC0("/.", 1, "/");
  FUNC0("//.", 1, "//");
  FUNC0("/..", 1, "/");
  FUNC0("//..", 1, "/");
  FUNC0("///..", 1, "//");
  FUNC0("/./", 1, "/");
  FUNC0("/.//", 1, "//");
  FUNC0("/./.", 1, "/");
  FUNC0("/.//.", 1, "//");
  FUNC0("/foo", 1, "/foo");
  FUNC0("/foo/", 1, "/foo/");
  FUNC0("/foo/.", 1, "/foo/");
  FUNC0("/foo/./", 1, "/foo/");
  FUNC0("/foo/..", 1, "/");
  FUNC0("/foo/../", 1, "/");
  FUNC0("/foo/../bar", 1, "/bar");
  FUNC0("/foo/../bar/", 1, "/bar/");
  FUNC0("/foo/../../bar", 1, "/bar");
  FUNC0("/foo////bar/", 1, "/foo////bar/");
  /* No percent-decoding. */
  FUNC0("/fo%2fo/%2e%2e/%2e/bar", 1, "/fo%2fo/%2e%2e/%2e/bar");
  return NULL;
}