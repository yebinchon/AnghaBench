
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; int row; int col; } ;
typedef TYPE_1__ mpc_state_t ;



__attribute__((used)) static mpc_state_t mpc_state_invalid(void) {
  mpc_state_t s;
  s.pos = -1;
  s.row = -1;
  s.col = -1;
  return s;
}
