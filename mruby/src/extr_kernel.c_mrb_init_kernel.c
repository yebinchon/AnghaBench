
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_7__ {struct RClass* kernel_module; int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_ANY () ;
 int MRB_ARGS_ARG (int,int) ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 int mrb_any_to_s ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 struct RClass* mrb_define_module (TYPE_1__*,char*) ;
 int mrb_equal_m ;
 int mrb_f_block_given_p_m ;
 int mrb_f_raise ;
 int mrb_false ;
 int mrb_include_module (TYPE_1__*,int ,struct RClass*) ;
 int mrb_obj_ceqq ;
 int mrb_obj_class_m ;
 int mrb_obj_clone ;
 int mrb_obj_dup ;
 int mrb_obj_equal_m ;
 int mrb_obj_extend_m ;
 int mrb_obj_freeze ;
 int mrb_obj_frozen ;
 int mrb_obj_hash ;
 int mrb_obj_id_m ;
 int mrb_obj_init_copy ;
 int mrb_obj_inspect ;
 int mrb_obj_is_kind_of_m ;
 int mrb_obj_missing ;
 int mrb_obj_remove_instance_variable ;
 int mrb_to_int ;
 int mrb_to_str ;
 int obj_is_instance_of ;
 int obj_respond_to ;

void
mrb_init_kernel(mrb_state *mrb)
{
  struct RClass *krn;

  mrb->kernel_module = krn = mrb_define_module(mrb, "Kernel");
  mrb_define_class_method(mrb, krn, "block_given?", mrb_f_block_given_p_m, MRB_ARGS_NONE());
  mrb_define_class_method(mrb, krn, "iterator?", mrb_f_block_given_p_m, MRB_ARGS_NONE());
;
  mrb_define_class_method(mrb, krn, "raise", mrb_f_raise, MRB_ARGS_OPT(2));


  mrb_define_method(mrb, krn, "===", mrb_equal_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, krn, "block_given?", mrb_f_block_given_p_m, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "class", mrb_obj_class_m, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "clone", mrb_obj_clone, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "dup", mrb_obj_dup, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "eql?", mrb_obj_equal_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, krn, "extend", mrb_obj_extend_m, MRB_ARGS_ANY());
  mrb_define_method(mrb, krn, "freeze", mrb_obj_freeze, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "frozen?", mrb_obj_frozen, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "hash", mrb_obj_hash, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "initialize_copy", mrb_obj_init_copy, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, krn, "inspect", mrb_obj_inspect, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "instance_of?", obj_is_instance_of, MRB_ARGS_REQ(1));

  mrb_define_method(mrb, krn, "is_a?", mrb_obj_is_kind_of_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, krn, "iterator?", mrb_f_block_given_p_m, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "kind_of?", mrb_obj_is_kind_of_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, krn, "method_missing", mrb_obj_missing, MRB_ARGS_ANY());
  mrb_define_method(mrb, krn, "nil?", mrb_false, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "object_id", mrb_obj_id_m, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "raise", mrb_f_raise, MRB_ARGS_ANY());
  mrb_define_method(mrb, krn, "remove_instance_variable", mrb_obj_remove_instance_variable,MRB_ARGS_REQ(1));
  mrb_define_method(mrb, krn, "respond_to?", obj_respond_to, MRB_ARGS_ARG(1,1));
  mrb_define_method(mrb, krn, "to_s", mrb_any_to_s, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "__case_eqq", mrb_obj_ceqq, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, krn, "__to_int", mrb_to_int, MRB_ARGS_NONE());
  mrb_define_method(mrb, krn, "__to_str", mrb_to_str, MRB_ARGS_NONE());

  mrb_include_module(mrb, mrb->object_class, mrb->kernel_module);
}
