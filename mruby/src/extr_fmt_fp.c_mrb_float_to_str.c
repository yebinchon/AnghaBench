
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int buf ;


 int mrb_float (int ) ;
 int mrb_str_new_cstr (int *,char*) ;
 int snprintf (char*,int,char const*,int ) ;

mrb_value
mrb_float_to_str(mrb_state *mrb, mrb_value flo, const char *fmt)
{
  char buf[25];

  snprintf(buf, sizeof(buf), fmt, mrb_float(flo));
  return mrb_str_new_cstr(mrb, buf);
}
