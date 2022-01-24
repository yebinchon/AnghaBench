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
typedef  double mrb_float ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,double*,double*) ; 

__attribute__((used)) static mrb_value
FUNC4(mrb_state *mrb, mrb_value obj)
{
  mrb_float x, base;
  mrb_int argc;

  argc = FUNC3(mrb, "f|f", &x, &base);
  if (x < 0.0) {
    FUNC0(mrb, "log");
  }
  x = FUNC1(x);
  if (argc == 2) {
    if (base < 0.0) {
      FUNC0(mrb, "log");
    }
    x /= FUNC1(base);
  }
  return FUNC2(mrb, x);
}