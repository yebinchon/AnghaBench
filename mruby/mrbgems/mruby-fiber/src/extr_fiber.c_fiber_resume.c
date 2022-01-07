
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_9__ {TYPE_2__* c; } ;
typedef TYPE_3__ mrb_state ;
typedef int mrb_int ;
typedef int mrb_bool ;
struct TYPE_8__ {TYPE_1__* ci; } ;
struct TYPE_7__ {scalar_t__ acc; } ;


 int FALSE ;
 int TRUE ;
 int fiber_switch (TYPE_3__*,int ,int ,int *,int ,int ) ;
 int mrb_get_args (TYPE_3__*,char*,int **,int *) ;

__attribute__((used)) static mrb_value
fiber_resume(mrb_state *mrb, mrb_value self)
{
  mrb_value *a;
  mrb_int len;
  mrb_bool vmexec = FALSE;

  mrb_get_args(mrb, "*!", &a, &len);
  if (mrb->c->ci->acc < 0) {
    vmexec = TRUE;
  }
  return fiber_switch(mrb, self, len, a, TRUE, vmexec);
}
