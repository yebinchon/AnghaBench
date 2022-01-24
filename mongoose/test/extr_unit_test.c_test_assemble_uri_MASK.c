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
struct mg_str {scalar_t__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_str,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_str*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mg_str*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct mg_str*) ; 
 struct mg_str FUNC4 (char*) ; 

__attribute__((used)) static const char *FUNC5(void) {
  struct mg_str scheme, path, uri;
  {
    FUNC0(FUNC3(NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, &uri),
              0);
    FUNC1(uri, "");
  }

  {
    scheme = FUNC4("file");
    path = FUNC4("/foo/bar");
    FUNC0(
        FUNC3(&scheme, NULL, NULL, 0, &path, NULL, NULL, 0, &uri), 0);
    FUNC1(uri, "file:///foo/bar");
    FUNC2((void *) uri.p);
  }

  {
    scheme = FUNC4("file");
    path = FUNC4("/foo/.././bar/baz");
    FUNC0(
        FUNC3(&scheme, NULL, NULL, 0, &path, NULL, NULL, 0, &uri), 0);
    FUNC1(uri, "file:///foo/.././bar/baz");
    FUNC2((void *) uri.p);
    FUNC0(
        FUNC3(&scheme, NULL, NULL, 0, &path, NULL, NULL, 1, &uri), 0);
    FUNC1(uri, "file:///bar/baz");
    FUNC2((void *) uri.p);
  }

  return NULL;
}