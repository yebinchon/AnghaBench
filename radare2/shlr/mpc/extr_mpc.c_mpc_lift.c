
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lf; } ;
struct TYPE_7__ {TYPE_1__ lift; } ;
struct TYPE_8__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mpc_parser_t ;
typedef int mpc_ctor_t ;


 int MPC_TYPE_LIFT ;
 TYPE_3__* mpc_undefined () ;

mpc_parser_t *mpc_lift(mpc_ctor_t lf) {
  mpc_parser_t *p = mpc_undefined();
  p->type = MPC_TYPE_LIFT;
  p->data.lift.lf = lf;
  return p;
}
