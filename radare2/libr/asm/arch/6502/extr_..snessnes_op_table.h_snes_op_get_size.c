
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
typedef TYPE_1__ snes_op_t ;


 int SNES_OP_16BIT ;
 int SNES_OP_24BIT ;



__attribute__((used)) static int snes_op_get_size(int M_flag, int X_flag, snes_op_t* op) {

 switch(op->len) {
  case 129: return M_flag ? SNES_OP_16BIT : SNES_OP_24BIT;
  case 128: return X_flag ? SNES_OP_16BIT : SNES_OP_24BIT;
  default: return op->len;
 }
}
