
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int csh ;
typedef int cs_insn ;
struct TYPE_10__ {int disp; int scale; } ;
struct TYPE_11__ {int type; TYPE_2__ mem; } ;
typedef TYPE_3__ cs_arm_op ;
struct TYPE_9__ {int disp; } ;
struct TYPE_12__ {TYPE_1__ mem; } ;
typedef TYPE_4__ cs_arm64_op ;
struct TYPE_13__ {int * reg; int * regdelta; int delta; int mul; } ;
typedef TYPE_5__ RAnalValue ;




 TYPE_3__ INSOP (int) ;
 TYPE_4__ INSOP64 (int) ;
 int * base_regs ;
 int parse_reg64_name (int *,int *,int ,int *,int) ;
 int parse_reg_name (int *,int *,int ,int *,int) ;
 int * regdelta_regs ;

__attribute__((used)) static void set_src_dst(RAnalValue *val, csh *handle, cs_insn *insn, int x, int bits) {
 cs_arm_op armop = INSOP (x);
 cs_arm64_op arm64op = INSOP64 (x);
 if (bits == 64) {
  parse_reg64_name (&base_regs[x], &regdelta_regs[x], *handle, insn, x);
 } else {
  parse_reg_name (&base_regs[x], &regdelta_regs[x], *handle, insn, x);
 }
 switch (armop.type) {
 case 128:
  break;
 case 129:
  if (bits == 64) {
   val->delta = arm64op.mem.disp;
  } else {
   val->mul = armop.mem.scale;
   val->delta = armop.mem.disp;
  }
  val->regdelta = &regdelta_regs[x];
  break;
 default:
  break;
 }
 val->reg = &base_regs[x];
}
