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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int _MAX_DIR ; 
 int _MAX_EXT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 size_t FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value klass)
{
  // NOTE: Do not use mrb_locale_from_utf8 here
#if defined(_WIN32) || defined(_WIN64)
  char bname[_MAX_DIR];
  char extname[_MAX_EXT];
  char *path;
  size_t ridx;
  char buffer[_MAX_DIR + _MAX_EXT];
  mrb_value s;

  mrb_get_args(mrb, "S", &s);
  path = mrb_str_to_cstr(mrb, s);
  ridx = strlen(path);
  if (ridx > 0) {
    ridx--;
    while (ridx > 0 && (path[ridx] == '/' || path[ridx] == '\\')) {
      path[ridx] = '\0';
      ridx--;
    }
    if (strncmp(path, "/", 2) == 0) {
      return mrb_str_new_cstr(mrb, path);
    }
  }
  _splitpath((const char*)path, NULL, NULL, bname, extname);
  snprintf(buffer, _MAX_DIR + _MAX_EXT, "%s%s", bname, extname);
  return mrb_str_new_cstr(mrb, buffer);
#else
  char *bname, *path;
  mrb_value s;
  FUNC2(mrb, "S", &s);
  path = FUNC4(mrb, s);
  if ((bname = FUNC1(path)) == NULL) {
    FUNC5(mrb, "basename");
  }
  if (FUNC8(bname, "//", 3) == 0) bname[1] = '\0';  /* patch for Cygwin */
  return FUNC3(mrb, bname);
#endif
}