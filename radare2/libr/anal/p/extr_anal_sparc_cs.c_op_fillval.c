
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int csh ;
typedef int cs_insn ;
struct TYPE_9__ {int disp; } ;
struct TYPE_11__ {TYPE_3__ mem; int type; } ;
struct TYPE_10__ {int type; TYPE_2__* dst; TYPE_1__** src; } ;
struct TYPE_8__ {int delta; int * reg; } ;
struct TYPE_7__ {int delta; int * reg; } ;
typedef int RRegItem ;
typedef TYPE_4__ RAnalOp ;


 TYPE_6__ INSOP (int) ;

 int R_ANAL_OP_TYPE_MASK ;

 int SPARC_OP_MEM ;
 int ZERO_FILL (int ) ;
 int parse_reg_name (int *,int ,int *,int) ;
 void* r_anal_value_new () ;

__attribute__((used)) static void op_fillval(RAnalOp *op, csh handle, cs_insn *insn) {
 static RRegItem reg;
 switch (op->type & R_ANAL_OP_TYPE_MASK) {
 case 129:
  if (INSOP(0).type == SPARC_OP_MEM) {
   ZERO_FILL (reg);
   op->src[0] = r_anal_value_new ();
   op->src[0]->reg = &reg;
   parse_reg_name (op->src[0]->reg, handle, insn, 0);
   op->src[0]->delta = INSOP(0).mem.disp;
  }
  break;
 case 128:
  if (INSOP(1).type == SPARC_OP_MEM) {
   ZERO_FILL (reg);
   op->dst = r_anal_value_new ();
   op->dst->reg = &reg;
   parse_reg_name (op->dst->reg, handle, insn, 1);
   op->dst->delta = INSOP(1).mem.disp;
  }
  break;
 }
}
