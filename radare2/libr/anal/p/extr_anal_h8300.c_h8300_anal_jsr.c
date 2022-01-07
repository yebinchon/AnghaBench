
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut16 ;
struct TYPE_3__ {int jump; void* type; int fail; } ;
typedef TYPE_1__ RAnalOp ;





 void* R_ANAL_OP_TYPE_CALL ;
 void* R_ANAL_OP_TYPE_UCALL ;
 int r_mem_swapendian (int*,int const*,int) ;

__attribute__((used)) static void h8300_anal_jsr(RAnalOp *op, ut64 addr, const ut8 *buf) {
 ut16 ad;

 switch (buf[0]) {
 case 130:
  op->type = R_ANAL_OP_TYPE_UCALL;
  break;
 case 129:
  op->type = R_ANAL_OP_TYPE_CALL;
  r_mem_swapendian ((ut8*)&ad, buf + 2, sizeof (ut16));
  op->jump = ad;
  op->fail = addr + 4;
  break;
 case 128:
  op->type = R_ANAL_OP_TYPE_UCALL;
  op->jump = buf[1];
  break;
 }
}
