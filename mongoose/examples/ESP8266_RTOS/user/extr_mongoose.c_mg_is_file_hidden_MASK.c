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
struct mg_serve_http_opts {char* per_directory_auth_file; char* hidden_file_pattern; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRSEP ; 
 scalar_t__ FUNC0 (char const*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *path,
                             const struct mg_serve_http_opts *opts,
                             int exclude_specials) {
  const char *p1 = opts->per_directory_auth_file;
  const char *p2 = opts->hidden_file_pattern;

  /* Strip directory path from the file name */
  const char *pdir = FUNC3(path, DIRSEP);
  if (pdir != NULL) {
    path = pdir + 1;
  }

  return (exclude_specials && (!FUNC1(path, ".") || !FUNC1(path, ".."))) ||
         (p1 != NULL && FUNC0(p1, FUNC2(p1), path) == FUNC2(p1)) ||
         (p2 != NULL && FUNC0(p2, FUNC2(p2), path) > 0);
}