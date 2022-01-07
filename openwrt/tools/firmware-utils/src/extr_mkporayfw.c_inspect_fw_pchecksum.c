
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int printf (char*,...) ;

__attribute__((used)) static inline void inspect_fw_pchecksum(char *label,
     uint16_t val, uint16_t expval)
{
 printf("%-23s: 0x%04x     ", label, val);
 if (val == expval) {
  printf("(ok)\n");
 } else {
  printf("(expected: 0x%04x)\n", expval);
 }
}
