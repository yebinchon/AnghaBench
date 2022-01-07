
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool can_replace(const char *str, int idx, int max_operands) {
 if (str[idx] > '9' || str[idx] < '1') {
  return 0;
 }
 if (str[idx + 1] != '\x00' && str[idx + 1] <= '9' && str[idx + 1] >= '1') {
  return 0;
 }
 if ((int)((int)str[idx] - 0x30) > max_operands) {
  return 0;
 }
 return 1;
}
