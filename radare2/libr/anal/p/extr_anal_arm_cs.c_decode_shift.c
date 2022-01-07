
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm_shifter ;
__attribute__((used)) static const char *decode_shift(arm_shifter shift) {
 static const char *E_OP_SR = ">>";
 static const char *E_OP_SL = "<<";
 static const char *E_OP_RR = ">>>";
 static const char *E_OP_ASR = ">>>>";
 static const char *E_OP_VOID = "";

 switch (shift) {
 case 137:
 case 136:
  return E_OP_ASR;

 case 133:
 case 132:
  return E_OP_SR;

 case 135:
 case 134:
  return E_OP_SL;

 case 131:
 case 129:
 case 130:
 case 128:
  return E_OP_RR;

 default:
  break;
 }
 return E_OP_VOID;
}
