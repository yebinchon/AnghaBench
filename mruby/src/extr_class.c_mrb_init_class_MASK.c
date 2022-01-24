#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct RObject {int dummy; } ;
struct RClass {struct RClass* c; } ;
struct TYPE_15__ {struct RObject* top_self; struct RClass* object_class; struct RClass* proc_class; struct RClass* class_class; struct RClass* module_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (int,int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_CLASS ; 
 int /*<<< orphan*/  MRB_TT_MODULE ; 
 int /*<<< orphan*/  MRB_TT_OBJECT ; 
 int /*<<< orphan*/  MRB_TT_PROC ; 
 struct RClass* FUNC8 (TYPE_1__*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct RClass*) ; 
 int /*<<< orphan*/  inspect_main ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct RClass*) ; 
 int /*<<< orphan*/  mod_define_method ; 
 int /*<<< orphan*/  mrb_bob_init ; 
 int /*<<< orphan*/  mrb_bob_not ; 
 int /*<<< orphan*/  mrb_class_initialize ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_class_new_class ; 
 int /*<<< orphan*/  mrb_class_superclass ; 
 struct RClass* FUNC12 (TYPE_1__*,char*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,struct RObject*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mrb_f_send ; 
 int /*<<< orphan*/  mrb_instance_alloc ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  mrb_mod_alias ; 
 int /*<<< orphan*/  mrb_mod_ancestors ; 
 int /*<<< orphan*/  mrb_mod_append_features ; 
 int /*<<< orphan*/  mrb_mod_attr_reader ; 
 int /*<<< orphan*/  mrb_mod_attr_writer ; 
 int /*<<< orphan*/  mrb_mod_const_defined ; 
 int /*<<< orphan*/  mrb_mod_const_get ; 
 int /*<<< orphan*/  mrb_mod_const_missing ; 
 int /*<<< orphan*/  mrb_mod_const_set ; 
 int /*<<< orphan*/  mrb_mod_dummy_visibility ; 
 int /*<<< orphan*/  mrb_mod_dup ; 
 int /*<<< orphan*/  mrb_mod_eqq ; 
 int /*<<< orphan*/  mrb_mod_extend_object ; 
 int /*<<< orphan*/  mrb_mod_include_p ; 
 int /*<<< orphan*/  mrb_mod_initialize ; 
 int /*<<< orphan*/  mrb_mod_method_defined ; 
 int /*<<< orphan*/  mrb_mod_module_eval ; 
 int /*<<< orphan*/  mrb_mod_module_function ; 
 int /*<<< orphan*/  mrb_mod_prepend_features ; 
 int /*<<< orphan*/  mrb_mod_remove_const ; 
 int /*<<< orphan*/  mrb_mod_to_s ; 
 int /*<<< orphan*/  mrb_mod_undef ; 
 scalar_t__ FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,struct RClass*) ; 
 int /*<<< orphan*/  mrb_obj_equal_m ; 
 int /*<<< orphan*/  mrb_obj_id_m ; 
 int /*<<< orphan*/  mrb_obj_instance_eval ; 
 int /*<<< orphan*/  mrb_obj_not_equal_m ; 
 int /*<<< orphan*/  FUNC19 (struct RClass*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,struct RClass*,char*) ; 
 int /*<<< orphan*/  top_define_method ; 

void
FUNC21(mrb_state *mrb)
{
  struct RClass *bob;           /* BasicObject */
  struct RClass *obj;           /* Object */
  struct RClass *mod;           /* Module */
  struct RClass *cls;           /* Class */

  /* boot class hierarchy */
  bob = FUNC8(mrb, 0);
  obj = FUNC8(mrb, bob); mrb->object_class = obj;
  mod = FUNC8(mrb, obj); mrb->module_class = mod;/* obj -> mod */
  cls = FUNC8(mrb, mod); mrb->class_class = cls; /* obj -> cls */
  /* fix-up loose ends */
  bob->c = obj->c = mod->c = cls->c = cls;
  FUNC10(mrb, bob);
  FUNC10(mrb, obj);
  FUNC10(mrb, mod);
  FUNC10(mrb, cls);

  /* name basic classes */
  FUNC14(mrb, bob, "BasicObject", FUNC19(bob));
  FUNC14(mrb, obj, "Object",      FUNC19(obj));
  FUNC14(mrb, obj, "Module",      FUNC19(mod));
  FUNC14(mrb, obj, "Class",       FUNC19(cls));

  /* name each classes */
  FUNC11(mrb, NULL, bob, FUNC17(mrb, "BasicObject"));
  FUNC11(mrb, NULL, obj, FUNC17(mrb, "Object")); /* 15.2.1 */
  FUNC11(mrb, NULL, mod, FUNC17(mrb, "Module")); /* 15.2.2 */
  FUNC11(mrb, NULL, cls, FUNC17(mrb, "Class"));  /* 15.2.3 */

  mrb->proc_class = FUNC12(mrb, "Proc", mrb->object_class);  /* 15.2.17 */
  FUNC7(mrb->proc_class, MRB_TT_PROC);

  FUNC7(cls, MRB_TT_CLASS);
  FUNC15(mrb, bob, "initialize",              mrb_bob_init,             FUNC3());
  FUNC15(mrb, bob, "!",                       mrb_bob_not,              FUNC3());
  FUNC15(mrb, bob, "==",                      mrb_obj_equal_m,          FUNC5(1)); /* 15.3.1.3.1  */
  FUNC15(mrb, bob, "!=",                      mrb_obj_not_equal_m,      FUNC5(1));
  FUNC15(mrb, bob, "__id__",                  mrb_obj_id_m,             FUNC3()); /* 15.3.1.3.4  */
  FUNC15(mrb, bob, "__send__",                mrb_f_send,               FUNC5(1)|FUNC6()|FUNC2());  /* 15.3.1.3.5  */
  FUNC15(mrb, bob, "equal?",                  mrb_obj_equal_m,          FUNC5(1)); /* 15.3.1.3.11 */
  FUNC15(mrb, bob, "instance_eval",           mrb_obj_instance_eval,    FUNC4(1)|FUNC2());  /* 15.3.1.3.18 */

  FUNC13(mrb, cls, "new",               mrb_class_new_class,      FUNC4(1)|FUNC2());
  FUNC15(mrb, cls, "allocate",                mrb_instance_alloc,       FUNC3());
  FUNC15(mrb, cls, "superclass",              mrb_class_superclass,     FUNC3()); /* 15.2.3.3.4 */
  FUNC15(mrb, cls, "initialize",              mrb_class_initialize,     FUNC4(1)); /* 15.2.3.3.1 */
  FUNC15(mrb, cls, "inherited",               mrb_bob_init,             FUNC5(1));

  FUNC9(mrb, cls);

  FUNC7(mod, MRB_TT_MODULE);
  FUNC15(mrb, mod, "extend_object",           mrb_mod_extend_object,    FUNC5(1)); /* 15.2.2.4.25 */
  FUNC15(mrb, mod, "extended",                mrb_bob_init,             FUNC5(1)); /* 15.2.2.4.26 */
  FUNC15(mrb, mod, "prepended",               mrb_bob_init,             FUNC5(1));
  FUNC15(mrb, mod, "prepend_features",        mrb_mod_prepend_features, FUNC5(1));
  FUNC15(mrb, mod, "include?",                mrb_mod_include_p,        FUNC5(1)); /* 15.2.2.4.28 */
  FUNC15(mrb, mod, "append_features",         mrb_mod_append_features,  FUNC5(1)); /* 15.2.2.4.10 */
  FUNC15(mrb, mod, "class_eval",              mrb_mod_module_eval,      FUNC0());  /* 15.2.2.4.15 */
  FUNC15(mrb, mod, "included",                mrb_bob_init,             FUNC5(1)); /* 15.2.2.4.29 */
  FUNC15(mrb, mod, "initialize",              mrb_mod_initialize,       FUNC3()); /* 15.2.2.4.31 */
  FUNC15(mrb, mod, "module_eval",             mrb_mod_module_eval,      FUNC0());  /* 15.2.2.4.35 */
  FUNC15(mrb, mod, "module_function",         mrb_mod_module_function,  FUNC0());
  FUNC15(mrb, mod, "private",                 mrb_mod_dummy_visibility, FUNC0());  /* 15.2.2.4.36 */
  FUNC15(mrb, mod, "protected",               mrb_mod_dummy_visibility, FUNC0());  /* 15.2.2.4.37 */
  FUNC15(mrb, mod, "public",                  mrb_mod_dummy_visibility, FUNC0());  /* 15.2.2.4.38 */
  FUNC15(mrb, mod, "attr_reader",             mrb_mod_attr_reader,      FUNC0());  /* 15.2.2.4.13 */
  FUNC15(mrb, mod, "attr_writer",             mrb_mod_attr_writer,      FUNC0());  /* 15.2.2.4.14 */
  FUNC15(mrb, mod, "to_s",                    mrb_mod_to_s,             FUNC3());
  FUNC15(mrb, mod, "inspect",                 mrb_mod_to_s,             FUNC3());
  FUNC15(mrb, mod, "alias_method",            mrb_mod_alias,            FUNC0());  /* 15.2.2.4.8 */
  FUNC15(mrb, mod, "ancestors",               mrb_mod_ancestors,        FUNC3()); /* 15.2.2.4.9 */
  FUNC15(mrb, mod, "undef_method",            mrb_mod_undef,            FUNC0());  /* 15.2.2.4.41 */
  FUNC15(mrb, mod, "const_defined?",          mrb_mod_const_defined,    FUNC1(1,1)); /* 15.2.2.4.20 */
  FUNC15(mrb, mod, "const_get",               mrb_mod_const_get,        FUNC5(1)); /* 15.2.2.4.21 */
  FUNC15(mrb, mod, "const_set",               mrb_mod_const_set,        FUNC5(2)); /* 15.2.2.4.23 */
  FUNC15(mrb, mod, "remove_const",            mrb_mod_remove_const,     FUNC5(1)); /* 15.2.2.4.40 */
  FUNC15(mrb, mod, "const_missing",           mrb_mod_const_missing,    FUNC5(1));
  FUNC15(mrb, mod, "method_defined?",         mrb_mod_method_defined,   FUNC5(1)); /* 15.2.2.4.34 */
  FUNC15(mrb, mod, "define_method",           mod_define_method,        FUNC1(1,1));
  FUNC15(mrb, mod, "===",                     mrb_mod_eqq,              FUNC5(1)); /* 15.2.2.4.7 */
  FUNC15(mrb, mod, "dup",                     mrb_mod_dup,              FUNC3());

  FUNC20(mrb, cls, "append_features");
  FUNC20(mrb, cls, "extend_object");

  mrb->top_self = (struct RObject*)FUNC18(mrb, MRB_TT_OBJECT, mrb->object_class);
  FUNC16(mrb, mrb->top_self, "inspect", inspect_main, FUNC3());
  FUNC16(mrb, mrb->top_self, "to_s", inspect_main, FUNC3());
  FUNC16(mrb, mrb->top_self, "define_method", top_define_method, FUNC1(1,1));
}