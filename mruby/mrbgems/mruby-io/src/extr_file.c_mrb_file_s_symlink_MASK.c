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
 int /*<<< orphan*/  E_NOTIMP_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,char const*) ; 

__attribute__((used)) static mrb_value
FUNC11(mrb_state *mrb, mrb_value klass)
{
#if defined(_WIN32) || defined(_WIN64)
  mrb_raise(mrb, E_NOTIMP_ERROR, "symlink is not supported on this platform");
#else
  mrb_value from, to;
  const char *src, *dst;
  int ai = FUNC4(mrb);

  FUNC5(mrb, "SS", &from, &to);
  src = FUNC7(FUNC0(mrb, from), -1);
  dst = FUNC7(FUNC0(mrb, to), -1);
  if (FUNC10(src, dst) == -1) {
    FUNC6(src);
    FUNC6(dst);
    FUNC9(mrb, FUNC0(mrb, FUNC2(mrb, "(%v, %v)", from, to)));
  }
  FUNC6(src);
  FUNC6(dst);
  FUNC3(mrb, ai);
#endif
  return FUNC1(0);
}