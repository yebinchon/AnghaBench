#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_6__ {struct RClass* module_class; struct RClass* kernel_module; int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  method_arity ; 
 int /*<<< orphan*/  method_bcall ; 
 int /*<<< orphan*/  method_call ; 
 int /*<<< orphan*/  method_eql ; 
 int /*<<< orphan*/  method_name ; 
 int /*<<< orphan*/  method_owner ; 
 int /*<<< orphan*/  method_parameters ; 
 int /*<<< orphan*/  method_receiver ; 
 int /*<<< orphan*/  method_source_location ; 
 int /*<<< orphan*/  method_super_method ; 
 int /*<<< orphan*/  method_to_s ; 
 int /*<<< orphan*/  method_unbind ; 
 struct RClass* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mrb_kernel_method ; 
 int /*<<< orphan*/  mrb_module_instance_method ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*) ; 
 int /*<<< orphan*/  unbound_method_bind ; 

void
FUNC6(mrb_state* mrb)
{
  struct RClass *unbound_method = FUNC3(mrb, "UnboundMethod", mrb->object_class);
  struct RClass *method = FUNC3(mrb, "Method", mrb->object_class);

  FUNC5(mrb, unbound_method, "new");
  FUNC4(mrb, unbound_method, "bind", unbound_method_bind, FUNC2(1));
  FUNC4(mrb, unbound_method, "super_method", method_super_method, FUNC1());
  FUNC4(mrb, unbound_method, "==", method_eql, FUNC2(1));
  FUNC4(mrb, unbound_method, "eql?", method_eql, FUNC2(1));
  FUNC4(mrb, unbound_method, "to_s", method_to_s, FUNC1());
  FUNC4(mrb, unbound_method, "inspect", method_to_s, FUNC1());
  FUNC4(mrb, unbound_method, "arity", method_arity, FUNC1());
  FUNC4(mrb, unbound_method, "source_location", method_source_location, FUNC1());
  FUNC4(mrb, unbound_method, "parameters", method_parameters, FUNC1());
  FUNC4(mrb, unbound_method, "bind_call", method_bcall, FUNC2(1)|FUNC0());
  FUNC4(mrb, unbound_method, "owner", method_owner, FUNC1());
  FUNC4(mrb, unbound_method, "name", method_name, FUNC1());

  FUNC5(mrb, method, "new");
  FUNC4(mrb, method, "==", method_eql, FUNC2(1));
  FUNC4(mrb, method, "eql?", method_eql, FUNC2(1));
  FUNC4(mrb, method, "to_s", method_to_s, FUNC1());
  FUNC4(mrb, method, "inspect", method_to_s, FUNC1());
  FUNC4(mrb, method, "call", method_call, FUNC0());
  FUNC4(mrb, method, "[]", method_call, FUNC0());
  FUNC4(mrb, method, "unbind", method_unbind, FUNC1());
  FUNC4(mrb, method, "super_method", method_super_method, FUNC1());
  FUNC4(mrb, method, "arity", method_arity, FUNC1());
  FUNC4(mrb, method, "source_location", method_source_location, FUNC1());
  FUNC4(mrb, method, "parameters", method_parameters, FUNC1());
  FUNC4(mrb, method, "owner", method_owner, FUNC1());
  FUNC4(mrb, method, "receiver", method_receiver, FUNC1());
  FUNC4(mrb, method, "name", method_name, FUNC1());

  FUNC4(mrb, mrb->kernel_module, "method", mrb_kernel_method, FUNC2(1));

  FUNC4(mrb, mrb->module_class, "instance_method", mrb_module_instance_method, FUNC2(1));
}