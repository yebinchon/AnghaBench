
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* x; } ;
struct TYPE_8__ {TYPE_1__ predict; } ;
struct TYPE_9__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mpc_parser_t ;


 int MPC_TYPE_PREDICT ;
 TYPE_3__* mpc_undefined () ;

mpc_parser_t *mpc_predictive(mpc_parser_t *a) {
  mpc_parser_t *p = mpc_undefined();
  p->type = MPC_TYPE_PREDICT;
  p->data.predict.x = a;
  return p;
}
