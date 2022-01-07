
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_6__ {scalar_t__ exc; } ;
typedef TYPE_1__ mrb_state ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ mrb_bool (int ) ;
 int mrb_funcall (TYPE_1__*,int ,char*,int ) ;
 int mrb_print_error (TYPE_1__*) ;
 int mrb_top_self (TYPE_1__*) ;

__attribute__((used)) static int
eval_test(mrb_state *mrb)
{

  mrb_value result = mrb_funcall(mrb, mrb_top_self(mrb), "report", 0);

  if (mrb->exc) {
    mrb_print_error(mrb);
    mrb->exc = 0;
    return EXIT_FAILURE;
  }
  else {
    return mrb_bool(result) ? EXIT_SUCCESS : EXIT_FAILURE;
  }
}
