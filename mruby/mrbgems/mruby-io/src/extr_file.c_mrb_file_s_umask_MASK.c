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
typedef  int /*<<< orphan*/  mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

mrb_value
FUNC3(mrb_state *mrb, mrb_value klass)
{
#if defined(_WIN32) || defined(_WIN64)
  /* nothing to do on windows */
  return mrb_fixnum_value(0);

#else
  mrb_int mask, omask;
  if (FUNC1(mrb, "|i", &mask) == 0) {
    omask = FUNC2(0);
    FUNC2(omask);
  } else {
    omask = FUNC2(mask);
  }
  return FUNC0(omask);
#endif
}