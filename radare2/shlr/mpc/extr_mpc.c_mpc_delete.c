
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* name; scalar_t__ retained; } ;
typedef TYPE_1__ mpc_parser_t ;


 scalar_t__ MPC_TYPE_UNDEFINED ;
 int free (TYPE_1__*) ;
 int mpc_undefine_unretained (TYPE_1__*,int ) ;

void mpc_delete(mpc_parser_t *p) {
  if (p->retained) {

    if (p->type != MPC_TYPE_UNDEFINED) {
      mpc_undefine_unretained(p, 0);
    }

    free(p->name);
    free(p);

  } else {
    mpc_undefine_unretained(p, 0);
  }
}
