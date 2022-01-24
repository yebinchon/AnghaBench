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
 int /*<<< orphan*/  E_TYPE_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static void
FUNC7(mrb_state *mrb, mrb_value exc, mrb_value backtrace)
{
  if (!FUNC2(backtrace)) {
  type_err:
    FUNC5(mrb, E_TYPE_ERROR, "backtrace must be Array of String");
  }
  else {
    const mrb_value *p = FUNC1(backtrace);
    const mrb_value *pend = p + FUNC0(backtrace);

    while (p < pend) {
      if (!FUNC6(*p)) goto type_err;
      p++;
    }
  }
  FUNC4(mrb, exc, FUNC3(mrb, "backtrace"), backtrace);
}