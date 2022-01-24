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
struct passwd {char* pw_dir; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 struct passwd* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value klass)
{
  mrb_int argc;
  char *home;
  mrb_value path;

#ifndef _WIN32
  mrb_value username;

  argc = FUNC5(mrb, "|S", &username);
  if (argc == 0) {
    home = FUNC1("HOME");
    if (home == NULL) {
      return FUNC8();
    }
    if (!FUNC3(home)) {
      FUNC9(mrb, E_ARGUMENT_ERROR, "non-absolute home");
    }
  } else {
    const char *cuser = FUNC0(mrb, username);
    struct passwd *pwd = FUNC2(cuser);
    if (pwd == NULL) {
      return FUNC8();
    }
    home = pwd->pw_dir;
    if (!FUNC3(home)) {
      FUNC10(mrb, E_ARGUMENT_ERROR, "non-absolute home of ~%v", username);
    }
  }
  home = FUNC7(home, -1);
  path = FUNC11(mrb, home);
  FUNC6(home);
  return path;
#else
  argc = mrb_get_argc(mrb);
  if (argc == 0) {
    home = getenv("USERPROFILE");
    if (home == NULL) {
      return mrb_nil_value();
    }
    if (!mrb_file_is_absolute_path(home)) {
      mrb_raise(mrb, E_ARGUMENT_ERROR, "non-absolute home");
    }
  } else {
    return mrb_nil_value();
  }
  home = mrb_locale_from_utf8(home, -1);
  path = mrb_str_new_cstr(mrb, home);
  mrb_locale_free(home);
  return path;
#endif
}