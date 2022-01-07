
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 char* RSTRING_CSTR (int *,int ) ;
 int VF_FORMAT0 (char const*) ;
 int VF_FORMAT1 (char const*,int *) ;
 int VF_FORMAT2 (char const*,int *) ;
 int VF_FORMAT_INIT (int ) ;
 int mrb_get_args (int *,char*,int *,int *,int *) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
vf_s_format(mrb_state *mrb, mrb_value klass)
{
  mrb_value fmt_str, args[2];
  mrb_int argc = mrb_get_args(mrb, "S|oo", &fmt_str, args, args+1);
  const char *fmt = RSTRING_CSTR(mrb, fmt_str);

  VF_FORMAT_INIT(klass);

  switch (argc) {
    case 1: return VF_FORMAT0(fmt);
    case 2: return VF_FORMAT1(fmt, args);
    case 3: return VF_FORMAT2(fmt, args);
    default: return mrb_nil_value();
  }
}
