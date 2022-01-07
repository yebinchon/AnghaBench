
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_get_args (int *,char*,int *,int *,int *) ;
 int mrb_str_aset (int *,int ,int ,int ,int ) ;
 int mrb_undef_value () ;

__attribute__((used)) static mrb_value
mrb_str_aset_m(mrb_state *mrb, mrb_value str)
{
  mrb_value indx, alen, replace;

  switch (mrb_get_args(mrb, "oo|S!", &indx, &alen, &replace)) {
    case 2:
      replace = alen;
      alen = mrb_undef_value();
      break;
    case 3:
      break;
  }
  mrb_str_aset(mrb, str, indx, alen, replace);
  return str;
}
