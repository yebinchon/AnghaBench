
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_5__ {struct RClass* string_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_NONE () ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 int MRB_ARGS_REST () ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_int_chr ;
 struct RClass* mrb_module_get (TYPE_1__*,char*) ;
 int mrb_str_chr ;
 int mrb_str_concat_m ;
 int mrb_str_count ;
 int mrb_str_del_prefix ;
 int mrb_str_del_prefix_bang ;
 int mrb_str_del_suffix ;
 int mrb_str_del_suffix_bang ;
 int mrb_str_delete ;
 int mrb_str_delete_bang ;
 int mrb_str_dump ;
 int mrb_str_end_with ;
 int mrb_str_hex ;
 int mrb_str_lines ;
 int mrb_str_oct ;
 int mrb_str_ord ;
 int mrb_str_squeeze ;
 int mrb_str_squeeze_bang ;
 int mrb_str_start_with ;
 int mrb_str_succ ;
 int mrb_str_succ_bang ;
 int mrb_str_swapcase ;
 int mrb_str_swapcase_bang ;
 int mrb_str_tr ;
 int mrb_str_tr_bang ;
 int mrb_str_tr_s ;
 int mrb_str_tr_s_bang ;

void
mrb_mruby_string_ext_gem_init(mrb_state* mrb)
{
  struct RClass * s = mrb->string_class;

  mrb_define_method(mrb, s, "dump", mrb_str_dump, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "swapcase!", mrb_str_swapcase_bang, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "swapcase", mrb_str_swapcase, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "concat", mrb_str_concat_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, s, "<<", mrb_str_concat_m, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, s, "count", mrb_str_count, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, s, "tr", mrb_str_tr, MRB_ARGS_REQ(2));
  mrb_define_method(mrb, s, "tr!", mrb_str_tr_bang, MRB_ARGS_REQ(2));
  mrb_define_method(mrb, s, "tr_s", mrb_str_tr_s, MRB_ARGS_REQ(2));
  mrb_define_method(mrb, s, "tr_s!", mrb_str_tr_s_bang, MRB_ARGS_REQ(2));
  mrb_define_method(mrb, s, "squeeze", mrb_str_squeeze, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, s, "squeeze!", mrb_str_squeeze_bang, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, s, "delete", mrb_str_delete, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, s, "delete!", mrb_str_delete_bang, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, s, "start_with?", mrb_str_start_with, MRB_ARGS_REST());
  mrb_define_method(mrb, s, "end_with?", mrb_str_end_with, MRB_ARGS_REST());
  mrb_define_method(mrb, s, "hex", mrb_str_hex, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "oct", mrb_str_oct, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "chr", mrb_str_chr, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "succ", mrb_str_succ, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "succ!", mrb_str_succ_bang, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "next", mrb_str_succ, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "next!", mrb_str_succ_bang, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "ord", mrb_str_ord, MRB_ARGS_NONE());
  mrb_define_method(mrb, s, "delete_prefix!", mrb_str_del_prefix_bang, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, s, "delete_prefix", mrb_str_del_prefix, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, s, "delete_suffix!", mrb_str_del_suffix_bang, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, s, "delete_suffix", mrb_str_del_suffix, MRB_ARGS_REQ(1));

  mrb_define_method(mrb, s, "__lines", mrb_str_lines, MRB_ARGS_NONE());

  mrb_define_method(mrb, mrb_module_get(mrb, "Integral"), "chr", mrb_int_chr, MRB_ARGS_OPT(1));
}
