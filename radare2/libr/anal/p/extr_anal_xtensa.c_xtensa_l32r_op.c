
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_3__ {int ptr; int type; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int R_ANAL_OP_TYPE_LOAD ;

__attribute__((used)) static void xtensa_l32r_op (RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf) {
 op->type = R_ANAL_OP_TYPE_LOAD;
 op->ptr = ((addr + 3) & ~3) + ((buf[2] << 8 | buf[1]) << 2) - 0x40000;
}
