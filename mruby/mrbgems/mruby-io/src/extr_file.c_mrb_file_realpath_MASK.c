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
typedef  int mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_SEPARATOR ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC13(mrb_state *mrb, mrb_value klass)
{
  mrb_value pathname, dir_string, s, result;
  mrb_int argc;
  char *cpath;

  argc = FUNC2(mrb, "S|S", &pathname, &dir_string);
  if (argc == 2) {
    s = FUNC7(mrb, dir_string);
    s = FUNC5(mrb, s, FUNC8(mrb, FILE_SEPARATOR));
    s = FUNC5(mrb, s, pathname);
    pathname = s;
  }
  cpath = FUNC4(FUNC0(mrb, pathname), -1);
  result = FUNC6(mrb, PATH_MAX);
  if (FUNC11(cpath, FUNC1(result)) == NULL) {
    FUNC3(cpath);
    FUNC10(mrb, cpath);
    return result;              /* not reached */
  }
  FUNC3(cpath);
  FUNC9(mrb, result, FUNC12(FUNC1(result)));
  return result;
}