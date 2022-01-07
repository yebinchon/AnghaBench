
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int addr; } ;
struct TYPE_6__ {int base; int delta; } ;
typedef TYPE_1__ RAnalValue ;
typedef TYPE_2__ RAnalOp ;
typedef int RAnal ;


 TYPE_1__* r_anal_value_new () ;

__attribute__((used)) static RAnalValue *anal_pcrel_disp_mov(RAnal* anal, RAnalOp* op, ut8 disp, int size) {
 RAnalValue *ret = r_anal_value_new ();
 if (size==2) {
  ret->base = op->addr + 4;
  ret->delta = disp << 1;
 } else {
  ret->base = (op->addr + 4) & ~0x03;
  ret->delta = disp << 2;
 }

 return ret;
}
