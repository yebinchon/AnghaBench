
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; scalar_t__ reg; } ;
typedef TYPE_1__ Operand ;


 int OT_BYTE ;
 int OT_MEMORY ;
 scalar_t__ X86R_AL ;

__attribute__((used)) static int is_al_reg(const Operand *op) {
 if (op->type & OT_MEMORY) {
  return 0;
 }
 if (op->reg == X86R_AL && op->type & OT_BYTE) {
  return 1;
 }
 return 0;
}
