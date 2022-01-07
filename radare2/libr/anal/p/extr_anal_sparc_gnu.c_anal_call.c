
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
typedef int ut32 ;
typedef int st64 ;
struct TYPE_3__ {int jump; int fail; int dst; int type; } ;
typedef TYPE_1__ RAnalOp ;


 int R_ANAL_OP_TYPE_CALL ;
 int get_immed_sgnext (int const,int) ;
 int value_fill_addr_pc_disp (int const,int const) ;

__attribute__((used)) static void anal_call(RAnalOp *op, const ut32 insn, const ut64 addr) {
 const st64 disp = (get_immed_sgnext(insn, 29) * 4);
 op->type = R_ANAL_OP_TYPE_CALL;
 op->dst = value_fill_addr_pc_disp(addr, disp);
 op->jump = addr + disp;
 op->fail = addr + 4;
}
