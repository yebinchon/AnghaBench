
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm_shifter ;
__attribute__((used)) static const char *shift_type_name(arm_shifter type) {
 switch (type) {
 case 137:
  return "asr";
 case 135:
  return "lsl";
 case 133:
  return "lsr";
 case 131:
  return "ror";
 case 129:
  return "rrx";
 case 136:
  return "asr_reg";
 case 134:
  return "lsl_reg";
 case 132:
  return "lsr_reg";
 case 130:
  return "ror_reg";
 case 128:
  return "rrx_reg";
 default:
  return "";
 }
}
