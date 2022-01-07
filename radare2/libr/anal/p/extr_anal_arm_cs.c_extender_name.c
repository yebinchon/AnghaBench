
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm64_extender ;
__attribute__((used)) static const char *extender_name(arm64_extender extender) {
 switch (extender) {
 case 131:
  return "uxtb";
 case 130:
  return "uxth";
 case 129:
  return "uxtw";
 case 128:
  return "uxtx";
 case 135:
  return "sxtb";
 case 134:
  return "sxth";
 case 133:
  return "sxtw";
 case 132:
  return "sxtx";
 default:
  return "";
 }
}
