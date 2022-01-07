
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm_cc ;
__attribute__((used)) static const char *cc_name(arm_cc cc) {
 switch (cc) {
 case 141:
  return "eq";
 case 131:
  return "ne";
 case 137:
  return "hs";
 case 135:
  return "lo";
 case 132:
  return "mi";
 case 130:
  return "pl";
 case 128:
  return "vs";
 case 129:
  return "vc";
 case 138:
  return "hi";
 case 134:
  return "ls";
 case 140:
  return "ge";
 case 133:
  return "lt";
 case 139:
  return "gt";
 case 136:
  return "le";
 default:
  return "";
 }
}
