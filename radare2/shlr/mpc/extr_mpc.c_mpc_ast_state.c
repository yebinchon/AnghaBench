
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mpc_state_t ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ mpc_ast_t ;



mpc_ast_t *mpc_ast_state(mpc_ast_t *a, mpc_state_t s) {
  if (!a) { return a; }
  a->state = s;
  return a;
}
