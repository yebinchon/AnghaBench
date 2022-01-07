
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_sym ;
typedef int mrb_state ;
typedef int mrb_int ;


 int cv_name_p (int *,char const*,int ) ;
 int mrb_name_error (int *,int ,char*,int ) ;
 char* mrb_sym_name_len (int *,int ,int *) ;

__attribute__((used)) static void
check_cv_name_sym(mrb_state *mrb, mrb_sym id)
{
  mrb_int len;
  const char *name = mrb_sym_name_len(mrb, id, &len);
  if (!cv_name_p(mrb, name, len)) {
    mrb_name_error(mrb, id, "'%n' is not allowed as a class variable name", id);
  }
}
