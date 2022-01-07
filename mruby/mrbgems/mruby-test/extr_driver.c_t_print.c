
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 int RSTRING_LEN (int ) ;
 int RSTRING_PTR (int ) ;
 int fflush (int ) ;
 int fwrite (int ,int ,int,int ) ;
 int mrb_get_args (int *,char*,int **,size_t*) ;
 int mrb_nil_value () ;
 int mrb_obj_as_string (int *,int ) ;
 int stdout ;

__attribute__((used)) static mrb_value
t_print(mrb_state *mrb, mrb_value self)
{
  mrb_value *argv;
  mrb_int argc;
  mrb_int i;

  mrb_get_args(mrb, "*!", &argv, &argc);
  for (i = 0; i < argc; ++i) {
    mrb_value s = mrb_obj_as_string(mrb, argv[i]);
    fwrite(RSTRING_PTR(s), RSTRING_LEN(s), 1, stdout);
  }
  fflush(stdout);

  return mrb_nil_value();
}
