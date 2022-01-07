
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int E_ARGUMENT_ERROR ;
 int mrb_check_hash_type (int *,int const) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_undef_p (int ) ;

__attribute__((used)) static mrb_value
get_hash(mrb_state *mrb, mrb_value *hash, mrb_int argc, const mrb_value *argv)
{
  mrb_value tmp;

  if (!mrb_undef_p(*hash)) return *hash;
  if (argc != 2) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "one hash required");
  }
  tmp = mrb_check_hash_type(mrb, argv[1]);
  if (mrb_nil_p(tmp)) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "one hash required");
  }
  return (*hash = tmp);
}
