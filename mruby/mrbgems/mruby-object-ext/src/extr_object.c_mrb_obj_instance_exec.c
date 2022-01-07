
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct RClass {int dummy; } ;
typedef int mrb_value ;
struct TYPE_10__ {TYPE_2__* c; } ;
typedef TYPE_3__ mrb_state ;
typedef int mrb_int ;
struct TYPE_9__ {TYPE_1__* ci; } ;
struct TYPE_8__ {struct RClass* target_class; } ;





 struct RClass* mrb_class_ptr (int ) ;
 int mrb_get_args (TYPE_3__*,char*,int const**,int *,int *) ;
 int mrb_singleton_class (TYPE_3__*,int ) ;
 int mrb_type (int ) ;
 int mrb_yield_cont (TYPE_3__*,int ,int ,int ,int const*) ;

__attribute__((used)) static mrb_value
mrb_obj_instance_exec(mrb_state *mrb, mrb_value self)
{
  const mrb_value *argv;
  mrb_int argc;
  mrb_value blk;
  struct RClass *c;

  mrb_get_args(mrb, "*&!", &argv, &argc, &blk);

  switch (mrb_type(self)) {
  case 128:
  case 130:

  case 129:

    c = ((void*)0);
    break;
  default:
    c = mrb_class_ptr(mrb_singleton_class(mrb, self));
    break;
  }
  mrb->c->ci->target_class = c;
  return mrb_yield_cont(mrb, blk, self, argc, argv);
}
