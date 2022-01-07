
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* f ) (char) ;} ;
struct TYPE_9__ {TYPE_1__ satisfy; } ;
struct TYPE_10__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mpc_parser_t ;


 int MPC_TYPE_SATISFY ;
 TYPE_3__* mpc_expectf (TYPE_3__*,char*,int (*) (char)) ;
 TYPE_3__* mpc_undefined () ;

mpc_parser_t *mpc_satisfy(int(*f)(char)) {
  mpc_parser_t *p = mpc_undefined();
  p->type = MPC_TYPE_SATISFY;
  p->data.satisfy.f = f;
  return mpc_expectf(p, "character satisfying function %p", f);
}
