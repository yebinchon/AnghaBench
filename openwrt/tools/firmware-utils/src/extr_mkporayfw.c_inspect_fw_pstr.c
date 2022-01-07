
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*,char*) ;

__attribute__((used)) static inline void inspect_fw_pstr(char *label, char *str)
{
 printf("%-23s: %s\n", label, str);
}
