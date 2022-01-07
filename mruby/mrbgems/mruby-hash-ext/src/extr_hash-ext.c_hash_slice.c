
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int mrb_get_args (int *,char*,int **,scalar_t__*) ;
 int mrb_hash_fetch (int *,int ,int ,int ) ;
 int mrb_hash_new_capa (int *,scalar_t__) ;
 int mrb_hash_set (int *,int ,int ,int ) ;
 int mrb_undef_p (int ) ;
 int mrb_undef_value () ;

__attribute__((used)) static mrb_value
hash_slice(mrb_state *mrb, mrb_value hash)
{
  mrb_value *argv, result;
  mrb_int argc, i;

  mrb_get_args(mrb, "*", &argv, &argc);
  if (argc == 0) {
    return mrb_hash_new_capa(mrb, argc);
  }
  result = mrb_hash_new_capa(mrb, argc);
  for (i = 0; i < argc; i++) {
    mrb_value key = argv[i];
    mrb_value val;

    val = mrb_hash_fetch(mrb, hash, key, mrb_undef_value());
    if (!mrb_undef_p(val)) {
      mrb_hash_set(mrb, result, key, val);
    }
  }
  return result;
}
