
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_7__ {int object_class; struct RClass* array_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_ANY () ;
 int MRB_ARGS_ARG (int,int) ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_ARRAY ;
 int init_ary_each (TYPE_1__*,struct RClass*) ;
 int mrb_ary_aget ;
 int mrb_ary_aset ;
 int mrb_ary_clear_m ;
 int mrb_ary_cmp ;
 int mrb_ary_concat_m ;
 int mrb_ary_delete_at ;
 int mrb_ary_empty_p ;
 int mrb_ary_eq ;
 int mrb_ary_first ;
 int mrb_ary_index_m ;
 int mrb_ary_join_m ;
 int mrb_ary_last ;
 int mrb_ary_plus ;
 int mrb_ary_pop ;
 int mrb_ary_push_m ;
 int mrb_ary_replace_m ;
 int mrb_ary_reverse ;
 int mrb_ary_reverse_bang ;
 int mrb_ary_rindex_m ;
 int mrb_ary_s_create ;
 int mrb_ary_shift ;
 int mrb_ary_size ;
 int mrb_ary_svalue ;
 int mrb_ary_times ;
 int mrb_ary_unshift_m ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;

void
mrb_init_array(mrb_state *mrb)
{
  struct RClass *a;

  mrb->array_class = a = mrb_define_class(mrb, "Array", mrb->object_class);
  MRB_SET_INSTANCE_TT(a, MRB_TT_ARRAY);

  mrb_define_class_method(mrb, a, "[]", mrb_ary_s_create, MRB_ARGS_ANY());

  mrb_define_method(mrb, a, "+", mrb_ary_plus, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "*", mrb_ary_times, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "<<", mrb_ary_push_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "[]", mrb_ary_aget, MRB_ARGS_ARG(1,1));
  mrb_define_method(mrb, a, "[]=", mrb_ary_aset, MRB_ARGS_ARG(2,1));
  mrb_define_method(mrb, a, "clear", mrb_ary_clear_m, MRB_ARGS_NONE());
  mrb_define_method(mrb, a, "concat", mrb_ary_concat_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "delete_at", mrb_ary_delete_at, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "empty?", mrb_ary_empty_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, a, "first", mrb_ary_first, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, a, "index", mrb_ary_index_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "initialize_copy", mrb_ary_replace_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "join", mrb_ary_join_m, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, a, "last", mrb_ary_last, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, a, "length", mrb_ary_size, MRB_ARGS_NONE());
  mrb_define_method(mrb, a, "pop", mrb_ary_pop, MRB_ARGS_NONE());
  mrb_define_method(mrb, a, "push", mrb_ary_push_m, MRB_ARGS_ANY());
  mrb_define_method(mrb, a, "replace", mrb_ary_replace_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "reverse", mrb_ary_reverse, MRB_ARGS_NONE());
  mrb_define_method(mrb, a, "reverse!", mrb_ary_reverse_bang, MRB_ARGS_NONE());
  mrb_define_method(mrb, a, "rindex", mrb_ary_rindex_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "shift", mrb_ary_shift, MRB_ARGS_NONE());
  mrb_define_method(mrb, a, "size", mrb_ary_size, MRB_ARGS_NONE());
  mrb_define_method(mrb, a, "slice", mrb_ary_aget, MRB_ARGS_ARG(1,1));
  mrb_define_method(mrb, a, "unshift", mrb_ary_unshift_m, MRB_ARGS_ANY());

  mrb_define_method(mrb, a, "__ary_eq", mrb_ary_eq, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "__ary_cmp", mrb_ary_cmp, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "__ary_index", mrb_ary_index_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, a, "__svalue", mrb_ary_svalue, MRB_ARGS_NONE());

  init_ary_each(mrb, a);
}
