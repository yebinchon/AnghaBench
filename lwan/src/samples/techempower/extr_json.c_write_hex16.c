
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static int write_hex16(char *out, uint16_t val)
{
 const char *hex = "0123456789ABCDEF";

 *out++ = hex[(val >> 12) & 0xF];
 *out++ = hex[(val >> 8) & 0xF];
 *out++ = hex[(val >> 4) & 0xF];
 *out++ = hex[ val & 0xF];

 return 4;
}
