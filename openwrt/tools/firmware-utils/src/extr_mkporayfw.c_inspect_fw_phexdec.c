
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int printf (char*,char*,int,int) ;

__attribute__((used)) static inline void inspect_fw_phexdec(char *label, uint32_t val)
{
 printf("%-23s: 0x%08x / %8u bytes\n", label, val, val);
}
