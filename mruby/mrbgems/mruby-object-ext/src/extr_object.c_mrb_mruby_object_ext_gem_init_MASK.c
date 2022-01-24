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
struct TYPE_5__ {struct RClass* kernel_module; struct RClass* nil_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 struct RClass* FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mrb_f_itself ; 
 int /*<<< orphan*/  mrb_obj_instance_exec ; 
 int /*<<< orphan*/  nil_to_a ; 
 int /*<<< orphan*/  nil_to_f ; 
 int /*<<< orphan*/  nil_to_h ; 
 int /*<<< orphan*/  nil_to_i ; 

void
FUNC5(mrb_state* mrb)
{
  struct RClass * n = mrb->nil_class;

  FUNC4(mrb, n, "to_a", nil_to_a,       FUNC2());
#ifndef MRB_WITHOUT_FLOAT
  FUNC4(mrb, n, "to_f", nil_to_f,       FUNC2());
#endif
  FUNC4(mrb, n, "to_h", nil_to_h,       FUNC2());
  FUNC4(mrb, n, "to_i", nil_to_i,       FUNC2());

  FUNC4(mrb, mrb->kernel_module, "itself", mrb_f_itself, FUNC2());

  FUNC4(mrb, FUNC3(mrb, "BasicObject"), "instance_exec", mrb_obj_instance_exec, FUNC0() | FUNC1());
}