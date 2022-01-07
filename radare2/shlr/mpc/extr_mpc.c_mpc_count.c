
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int n; int dx; TYPE_3__* x; int f; } ;
struct TYPE_7__ {TYPE_2__ repeat; } ;
struct TYPE_9__ {TYPE_1__ data; int type; } ;
typedef TYPE_3__ mpc_parser_t ;
typedef int mpc_fold_t ;
typedef int mpc_dtor_t ;


 int MPC_TYPE_COUNT ;
 TYPE_3__* mpc_undefined () ;

mpc_parser_t *mpc_count(int n, mpc_fold_t f, mpc_parser_t *a, mpc_dtor_t da) {
  mpc_parser_t *p = mpc_undefined();
  p->type = MPC_TYPE_COUNT;
  p->data.repeat.n = n;
  p->data.repeat.f = f;
  p->data.repeat.x = a;
  p->data.repeat.dx = da;
  return p;
}
