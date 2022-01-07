
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_str_for_type(int type)
{
 switch (type) {
 case 129:
  return "AV";
 case 128:
  return "FW";
 case 130:
  return "ASW";
 default:
  return "unknown";
 }
}
