
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm64_vas ;
__attribute__((used)) static const char *vas_name(arm64_vas vas) {
 switch (vas) {
 case 129:
  return "8b";
 case 141:
  return "16b";
 case 131:
  return "4h";
 case 128:
  return "8h";
 case 133:
  return "2s";
 case 130:
  return "4s";
 case 135:
  return "2d";
 case 139:
  return "1d";
 case 137:
  return "1q";
 default:
  return "";
 }
}
