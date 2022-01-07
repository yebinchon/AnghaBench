
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,char const*) ;

inline void inspect_fw_pstr(const char *label, const char *str)
{
 printf("%-23s: %s\n", label, str);
}
