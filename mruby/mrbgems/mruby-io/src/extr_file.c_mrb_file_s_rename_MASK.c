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
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value obj)
{
  mrb_value from, to;
  char *src, *dst;

  FUNC5(mrb, "SS", &from, &to);
  src = FUNC7(FUNC1(mrb, from), -1);
  dst = FUNC7(FUNC1(mrb, to), -1);
  if (FUNC9(src, dst) < 0) {
#if defined(_WIN32) || defined(_WIN64)
    if (CHMOD(dst, 0666) == 0 && UNLINK(dst) == 0 && rename(src, dst) == 0) {
      mrb_locale_free(src);
      mrb_locale_free(dst);
      return mrb_fixnum_value(0);
    }
#endif
    FUNC6(src);
    FUNC6(dst);
    FUNC8(mrb, FUNC1(mrb, FUNC4(mrb, "(%v, %v)", from, to)));
    return FUNC3(-1); /* not reached */
  }
  FUNC6(src);
  FUNC6(dst);
  return FUNC3(0);
}