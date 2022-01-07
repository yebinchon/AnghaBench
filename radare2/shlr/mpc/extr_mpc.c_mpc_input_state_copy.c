
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mpc_state_t ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ mpc_input_t ;


 int memcpy (int *,int *,int) ;
 int * mpc_malloc (TYPE_1__*,int) ;

__attribute__((used)) static mpc_state_t *mpc_input_state_copy(mpc_input_t *i) {
  mpc_state_t *r = mpc_malloc(i, sizeof(mpc_state_t));
  memcpy(r, &i->state, sizeof(mpc_state_t));
  return r;
}
