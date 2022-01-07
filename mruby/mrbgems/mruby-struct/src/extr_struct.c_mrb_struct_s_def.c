
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int E_ARGUMENT_ERROR ;
 int * RARRAY_PTR (int ) ;
 int make_struct (int *,int ,int ,int ) ;
 int mrb_ary_new_from_values (int *,scalar_t__,int *) ;
 int mrb_ary_set (int *,int ,scalar_t__,int ) ;
 int mrb_class_ptr (int ) ;
 int mrb_get_args (int *,char*,int **,scalar_t__*,int *) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_obj_to_sym (int *,int ) ;
 int mrb_raise (int *,int ,char*) ;
 scalar_t__ mrb_symbol_p (int ) ;
 int mrb_symbol_value (int ) ;
 int mrb_yield_with_class (int *,int ,int,int *,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_struct_s_def(mrb_state *mrb, mrb_value klass)
{
  mrb_value name, rest;
  mrb_value *pargv;
  mrb_int argcnt;
  mrb_int i;
  mrb_value b, st;
  mrb_sym id;
  mrb_value *argv;
  mrb_int argc;

  name = mrb_nil_value();
  mrb_get_args(mrb, "*&", &argv, &argc, &b);
  if (argc == 0) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "wrong number of arguments");
  }
  else {
    pargv = argv;
    argcnt = argc;
    if (argc > 0) {
      name = argv[0];
      if (mrb_symbol_p(name)) {

        name = mrb_nil_value();
      }
      else {
        pargv++;
        argcnt--;
      }
    }
    rest = mrb_ary_new_from_values(mrb, argcnt, pargv);
    for (i=0; i<argcnt; i++) {
      id = mrb_obj_to_sym(mrb, RARRAY_PTR(rest)[i]);
      mrb_ary_set(mrb, rest, i, mrb_symbol_value(id));
    }
    st = make_struct(mrb, name, rest, mrb_class_ptr(klass));
    if (!mrb_nil_p(b)) {
      mrb_yield_with_class(mrb, b, 1, &st, st, mrb_class_ptr(st));
    }

    return st;
  }

  return mrb_nil_value();
}
