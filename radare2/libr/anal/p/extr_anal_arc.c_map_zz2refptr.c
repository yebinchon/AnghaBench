
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int refptr; int type; } ;
typedef TYPE_1__ RAnalOp ;


 int R_ANAL_OP_TYPE_ILL ;

__attribute__((used)) static void map_zz2refptr(RAnalOp *op, ut8 mode_zz) {
 switch (mode_zz) {
 case 0: op->refptr = 4; break;
 case 1: op->refptr = 1; break;
 case 2: op->refptr = 2; break;
 default:
  op->type = R_ANAL_OP_TYPE_ILL;
  break;
 }
}
