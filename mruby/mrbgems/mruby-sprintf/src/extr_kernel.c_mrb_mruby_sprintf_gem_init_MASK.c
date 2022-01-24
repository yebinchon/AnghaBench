#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_5__ {struct RClass* kernel_module; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 struct RClass* FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  mrb_f_sprintf ; 

void
FUNC4(mrb_state* mrb)
{
  struct RClass *krn;

  if (mrb->kernel_module == NULL) {
    mrb->kernel_module = FUNC3(mrb, "Kernel"); /* Might be PARANOID. */
  }
  krn = mrb->kernel_module;

  FUNC2(mrb, krn, "sprintf", mrb_f_sprintf, FUNC0(1)|FUNC1());
  FUNC2(mrb, krn, "format",  mrb_f_sprintf, FUNC0(1)|FUNC1());
}