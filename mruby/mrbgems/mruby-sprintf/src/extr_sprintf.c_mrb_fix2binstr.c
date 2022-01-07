
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int E_ARGUMENT_ERROR ;
 char* mrb_digitmap ;
 scalar_t__ mrb_fixnum (int ) ;
 int mrb_raisef (int *,int ,char*,int) ;
 int mrb_str_new_cstr (int *,char*) ;
 int mrb_str_new_lit (int *,char*) ;
 char* remove_sign_bits (char*,int) ;

__attribute__((used)) static mrb_value
mrb_fix2binstr(mrb_state *mrb, mrb_value x, int base)
{
  char buf[66], *b = buf + sizeof buf;
  mrb_int num = mrb_fixnum(x);
  uint64_t val = (uint64_t)num;
  char d;

  if (base != 2) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "invalid radix %d", base);
  }
  if (val == 0) {
    return mrb_str_new_lit(mrb, "0");
  }
  *--b = '\0';
  do {
    *--b = mrb_digitmap[(int)(val % base)];
  } while (val /= base);

  if (num < 0) {
    b = remove_sign_bits(b, base);
    switch (base) {
    case 16: d = 'f'; break;
    case 8: d = '7'; break;
    case 2: d = '1'; break;
    default: d = 0; break;
    }

    if (d && *b != d) {
      *--b = d;
    }
  }

  return mrb_str_new_cstr(mrb, b);
}
