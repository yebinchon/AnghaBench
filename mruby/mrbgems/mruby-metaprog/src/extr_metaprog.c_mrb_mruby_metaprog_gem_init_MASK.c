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
struct TYPE_5__ {struct RClass* module_class; struct RClass* kernel_module; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  mod_define_singleton_method ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mrb_f_global_variables ; 
 int /*<<< orphan*/  mrb_f_nil ; 
 int /*<<< orphan*/  mrb_f_send ; 
 int /*<<< orphan*/  mrb_local_variables ; 
 int /*<<< orphan*/  mrb_mod_class_variables ; 
 int /*<<< orphan*/  mrb_mod_constants ; 
 int /*<<< orphan*/  mrb_mod_cvar_defined ; 
 int /*<<< orphan*/  mrb_mod_cvar_get ; 
 int /*<<< orphan*/  mrb_mod_cvar_set ; 
 int /*<<< orphan*/  mrb_mod_included_modules ; 
 int /*<<< orphan*/  mrb_mod_instance_methods ; 
 int /*<<< orphan*/  mrb_mod_remove_cvar ; 
 int /*<<< orphan*/  mrb_mod_remove_method ; 
 int /*<<< orphan*/  mrb_mod_s_constants ; 
 int /*<<< orphan*/  mrb_mod_s_nesting ; 
 int /*<<< orphan*/  mrb_obj_instance_variables ; 
 int /*<<< orphan*/  mrb_obj_ivar_defined ; 
 int /*<<< orphan*/  mrb_obj_ivar_get ; 
 int /*<<< orphan*/  mrb_obj_ivar_set ; 
 int /*<<< orphan*/  mrb_obj_methods_m ; 
 int /*<<< orphan*/  mrb_obj_private_methods ; 
 int /*<<< orphan*/  mrb_obj_protected_methods ; 
 int /*<<< orphan*/  mrb_obj_public_methods ; 
 int /*<<< orphan*/  mrb_obj_singleton_methods_m ; 
 int /*<<< orphan*/  mrb_singleton_class ; 

void
FUNC8(mrb_state* mrb)
{
  struct RClass *krn = mrb->kernel_module;
  struct RClass *mod = mrb->module_class;

  FUNC7(mrb, krn, "global_variables", mrb_f_global_variables, FUNC2()); /* 15.3.1.3.14 (15.3.1.2.4) */
  FUNC7(mrb, krn, "local_variables", mrb_local_variables, FUNC2()); /* 15.3.1.3.28 (15.3.1.2.7) */

  FUNC7(mrb, krn, "singleton_class", mrb_singleton_class, FUNC2());
  FUNC7(mrb, krn, "instance_variable_defined?", mrb_obj_ivar_defined, FUNC4(1)); /* 15.3.1.3.20 */
  FUNC7(mrb, krn, "instance_variable_get", mrb_obj_ivar_get, FUNC4(1)); /* 15.3.1.3.21 */
  FUNC7(mrb, krn, "instance_variable_set", mrb_obj_ivar_set, FUNC4(2)); /* 15.3.1.3.22 */
  FUNC7(mrb, krn, "instance_variables", mrb_obj_instance_variables, FUNC2()); /* 15.3.1.3.23 */
  FUNC7(mrb, krn, "methods", mrb_obj_methods_m, FUNC3(1)); /* 15.3.1.3.31 */
  FUNC7(mrb, krn, "private_methods", mrb_obj_private_methods, FUNC3(1)); /* 15.3.1.3.36 */
  FUNC7(mrb, krn, "protected_methods", mrb_obj_protected_methods, FUNC3(1)); /* 15.3.1.3.37 */
  FUNC7(mrb, krn, "public_methods", mrb_obj_public_methods, FUNC3(1)); /* 15.3.1.3.38 */
  FUNC7(mrb, krn, "singleton_methods", mrb_obj_singleton_methods_m, FUNC3(1)); /* 15.3.1.3.45 */
  FUNC7(mrb, krn, "define_singleton_method", mod_define_singleton_method, FUNC4(1)|FUNC1());
  FUNC7(mrb, krn, "send", mrb_f_send, FUNC4(1)|FUNC5()|FUNC1()); /* 15.3.1.3.44 */

  FUNC7(mrb, mod, "class_variables", mrb_mod_class_variables, FUNC3(1)); /* 15.2.2.4.19 */
  FUNC7(mrb, mod, "remove_class_variable", mrb_mod_remove_cvar, FUNC4(1)); /* 15.2.2.4.39 */
  FUNC7(mrb, mod, "class_variable_defined?", mrb_mod_cvar_defined, FUNC4(1)); /* 15.2.2.4.16 */
  FUNC7(mrb, mod, "class_variable_get", mrb_mod_cvar_get, FUNC4(1)); /* 15.2.2.4.17 */
  FUNC7(mrb, mod, "class_variable_set", mrb_mod_cvar_set, FUNC4(2)); /* 15.2.2.4.18 */
  FUNC7(mrb, mod, "included_modules", mrb_mod_included_modules, FUNC2()); /* 15.2.2.4.30 */
  FUNC7(mrb, mod, "instance_methods", mrb_mod_instance_methods, FUNC0()); /* 15.2.2.4.33 */
  FUNC7(mrb, mod, "remove_method", mrb_mod_remove_method, FUNC0()); /* 15.2.2.4.41 */
  FUNC7(mrb, mod, "method_removed", mrb_f_nil, FUNC4(1));
  FUNC7(mrb, mod, "constants", mrb_mod_constants, FUNC3(1)); /* 15.2.2.4.24 */
  FUNC6(mrb, mod, "constants", mrb_mod_s_constants, FUNC0()); /* 15.2.2.3.1 */
  FUNC6(mrb, mod, "nesting", mrb_mod_s_nesting, FUNC2()); /* 15.2.2.3.2 */
}