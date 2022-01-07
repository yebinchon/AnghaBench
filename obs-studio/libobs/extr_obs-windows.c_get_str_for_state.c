
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_str_for_state(int state)
{
 switch (state) {
 case 129:
  return "enabled";
 case 130:
  return "disabled";
 case 128:
  return "temporarily disabled";
 case 131:
  return "expired";
 default:
  return "unknown";
 }
}
