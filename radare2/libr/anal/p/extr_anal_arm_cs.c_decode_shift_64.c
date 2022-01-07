
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm64_shifter ;
__attribute__((used)) static const char *decode_shift_64(arm64_shifter shift) {
 static const char *E_OP_SR = ">>";
 static const char *E_OP_SL = "<<";
 static const char *E_OP_RR = ">>>";
 static const char *E_OP_VOID = "";

 switch (shift) {
 case 132:
 case 130:
  return E_OP_SR;

 case 131:
 case 129:
  return E_OP_SL;

 case 128:
  return E_OP_RR;

 default:
  break;
 }
 return E_OP_VOID;
}
