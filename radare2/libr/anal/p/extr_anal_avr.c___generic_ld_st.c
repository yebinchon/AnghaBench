
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalOp ;


 int ESIL_A (char*,...) ;

__attribute__((used)) static void __generic_ld_st(RAnalOp *op, char *mem, char ireg, int use_ramp, int prepostdec, int offset, int st) {
 if (ireg) {

  if (prepostdec < 0) {
   ESIL_A ("1,%c,-,%c,=,", ireg, ireg);
  }

  ESIL_A ("%c,", ireg);

  if (offset != 0) {
   ESIL_A ("%d,+,", offset);
  }
 } else {
  ESIL_A ("%d,", offset);
 }
 if (use_ramp) {
  ESIL_A ("16,ramp%c,<<,+,", ireg ? ireg : 'd');
 }

 ESIL_A ("_%s,+,", mem);

 ESIL_A ("%s[1],", st ? "=" : "");

 if (ireg && prepostdec > 0) {
  ESIL_A ("1,%c,+,%c,=,", ireg, ireg);
 }
}
