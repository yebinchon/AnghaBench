
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,int*,int*,int*) ;

__attribute__((used)) static mrb_value
enum_update_hash(mrb_state *mrb, mrb_value self)
{
  mrb_int hash;
  mrb_int index;
  mrb_int hv;

  mrb_get_args(mrb, "iii", &hash, &index, &hv);
  hash ^= ((uint32_t)hv << (index % 16));

  return mrb_fixnum_value(hash);
}
