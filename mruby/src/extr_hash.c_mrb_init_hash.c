
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_5__ {int object_class; struct RClass* hash_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_BLOCK () ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_HASH ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int) ;
 int mrb_hash_aget ;
 int mrb_hash_aset ;
 int mrb_hash_clear ;
 int mrb_hash_default ;
 int mrb_hash_default_proc ;
 int mrb_hash_delete ;
 int mrb_hash_empty_m ;
 int mrb_hash_has_key ;
 int mrb_hash_has_value ;
 int mrb_hash_init ;
 int mrb_hash_init_copy ;
 int mrb_hash_keys ;
 int mrb_hash_rehash ;
 int mrb_hash_set_default ;
 int mrb_hash_set_default_proc ;
 int mrb_hash_shift ;
 int mrb_hash_size_m ;
 int mrb_hash_values ;

void
mrb_init_hash(mrb_state *mrb)
{
  struct RClass *h;

  mrb->hash_class = h = mrb_define_class(mrb, "Hash", mrb->object_class);
  MRB_SET_INSTANCE_TT(h, MRB_TT_HASH);

  mrb_define_method(mrb, h, "initialize_copy", mrb_hash_init_copy, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "[]", mrb_hash_aget, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "[]=", mrb_hash_aset, MRB_ARGS_REQ(2));
  mrb_define_method(mrb, h, "clear", mrb_hash_clear, MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "default", mrb_hash_default, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, h, "default=", mrb_hash_set_default, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "default_proc", mrb_hash_default_proc,MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "default_proc=", mrb_hash_set_default_proc,MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "__delete", mrb_hash_delete, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "empty?", mrb_hash_empty_m, MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "has_key?", mrb_hash_has_key, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "has_value?", mrb_hash_has_value, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "include?", mrb_hash_has_key, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "initialize", mrb_hash_init, MRB_ARGS_OPT(1)|MRB_ARGS_BLOCK());
  mrb_define_method(mrb, h, "key?", mrb_hash_has_key, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "keys", mrb_hash_keys, MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "length", mrb_hash_size_m, MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "member?", mrb_hash_has_key, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "shift", mrb_hash_shift, MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "size", mrb_hash_size_m, MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "store", mrb_hash_aset, MRB_ARGS_REQ(2));
  mrb_define_method(mrb, h, "value?", mrb_hash_has_value, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, h, "values", mrb_hash_values, MRB_ARGS_NONE());
  mrb_define_method(mrb, h, "rehash", mrb_hash_rehash, MRB_ARGS_NONE());
}
