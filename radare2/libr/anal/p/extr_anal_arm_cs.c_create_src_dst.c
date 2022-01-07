
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* dst; void** src; } ;
typedef TYPE_1__ RAnalOp ;


 int ZERO_FILL (int ) ;
 int * base_regs ;
 void* r_anal_value_new () ;
 int * regdelta_regs ;

__attribute__((used)) static void create_src_dst(RAnalOp *op) {
 op->src[0] = r_anal_value_new ();
 op->src[1] = r_anal_value_new ();
 op->src[2] = r_anal_value_new ();
 op->dst = r_anal_value_new ();
 ZERO_FILL (base_regs[0]);
 ZERO_FILL (base_regs[1]);
 ZERO_FILL (base_regs[2]);
 ZERO_FILL (base_regs[3]);
 ZERO_FILL (regdelta_regs[0]);
 ZERO_FILL (regdelta_regs[1]);
 ZERO_FILL (regdelta_regs[2]);
 ZERO_FILL (regdelta_regs[3]);
}
