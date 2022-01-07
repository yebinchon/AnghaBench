
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int csh ;
typedef int cs_insn ;
struct TYPE_5__ {int segment; int disp; int scale; } ;
struct TYPE_7__ {int type; int imm; int size; TYPE_1__ mem; } ;
struct TYPE_6__ {int * reg; int imm; int * regdelta; int memref; int sel; int delta; int mul; } ;
typedef TYPE_2__ RAnalValue ;


 TYPE_4__ INSOP (int) ;



 int * base_regs ;
 int parse_reg_name (int *,int *,int *,int *,int) ;
 int * regdelta_regs ;

__attribute__((used)) static void set_src_dst(RAnalValue *val, csh *handle, cs_insn *insn, int x) {
 parse_reg_name (&base_regs[x], &regdelta_regs[x], handle, insn, x);
 switch (INSOP (x).type) {
 case 129:
  val->mul = INSOP (x).mem.scale;
  val->delta = INSOP (x).mem.disp;
  val->sel = INSOP (x).mem.segment;
  val->memref = INSOP (x).size;
  val->regdelta = &regdelta_regs[x];
  break;
 case 128:
  break;
 case 130:
  val->imm = INSOP (x).imm;
  break;
 default:
  break;
 }
 val->reg = &base_regs[x];
}
