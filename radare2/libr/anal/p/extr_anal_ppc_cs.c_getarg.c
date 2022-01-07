
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct Getarg {int * insn; } ;
struct TYPE_4__ {scalar_t__ base; scalar_t__ disp; } ;
struct TYPE_5__ {int type; int imm; TYPE_1__ mem; scalar_t__ reg; } ;
typedef TYPE_2__ cs_ppc_op ;
typedef int cs_insn ;


 TYPE_2__ INSOP (int) ;






__attribute__((used)) static ut64 getarg(struct Getarg *gop, int n) {
 ut64 value = 0;
 cs_insn *insn = gop->insn;
 cs_ppc_op op;

 if (n < 0 || n >= 8) {
  return 0;
 }

 op = INSOP (n);
 switch (op.type) {
 case 130:
  break;
 case 128:
  value = op.reg;
  break;
 case 131:
  value = (ut64) op.imm;
  break;
 case 129:
  value = op.mem.disp + op.mem.base;
  break;
 case 132:
  value = (ut64) op.imm;
  break;
 }
 return value;
}
