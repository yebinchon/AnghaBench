
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct Getarg {int handle; int * insn; } ;
typedef int csh ;
struct TYPE_4__ {int base; } ;
struct TYPE_5__ {int type; TYPE_1__ mem; int reg; } ;
typedef TYPE_2__ cs_ppc_op ;
typedef int cs_insn ;


 TYPE_2__ INSOP (int) ;





 char const* cs_reg_name (int ,int ) ;

__attribute__((used)) static const char *getreg(struct Getarg *gop, int n) {
 cs_insn *insn = gop->insn;
 csh handle = gop->handle;

 if (n < 0 || n >= 8) {
  return ((void*)0);
 }
 cs_ppc_op op = INSOP (n);
 switch (op.type) {
 case 128:
  return cs_reg_name (handle, op.reg);
 case 129:
  return cs_reg_name (handle, op.mem.base);
 case 130:
 case 131:
 case 132:
  return ((void*)0);
 }
 return ((void*)0);
}
