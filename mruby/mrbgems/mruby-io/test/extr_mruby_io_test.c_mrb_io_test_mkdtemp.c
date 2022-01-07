
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int * mkdtemp (char*) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_str_new_cstr (int *,char*) ;
 char* mrb_str_to_cstr (int *,int ) ;
 int mrb_sys_fail (int *,char*) ;

__attribute__((used)) static mrb_value
mrb_io_test_mkdtemp(mrb_state *mrb, mrb_value klass)
{
  mrb_value str;
  char *cp;

  mrb_get_args(mrb, "S", &str);
  cp = mrb_str_to_cstr(mrb, str);
  if (mkdtemp(cp) == ((void*)0)) {
    mrb_sys_fail(mrb, "mkdtemp");
  }
  return mrb_str_new_cstr(mrb, cp);
}
