
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; int type; scalar_t__ retained; } ;
typedef TYPE_1__ mpc_parser_t ;


 int MPC_TYPE_UNDEFINED ;
 TYPE_1__* calloc (int,int) ;

__attribute__((used)) static mpc_parser_t *mpc_undefined(void) {
  mpc_parser_t *p = calloc(1, sizeof(mpc_parser_t));
  p->retained = 0;
  p->type = MPC_TYPE_UNDEFINED;
  p->name = ((void*)0);
  return p;
}
