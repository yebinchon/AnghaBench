
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MD5SUM_LEN ;
 int printf (char*,...) ;

inline void inspect_fw_pmd5sum(const char *label, const uint8_t *val, const char *text)
{
 int i;

 printf("%-23s:", label);
 for (i=0; i<MD5SUM_LEN; i++)
  printf(" %02x", val[i]);
 printf(" %s\n", text);
}
