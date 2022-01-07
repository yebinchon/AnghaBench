
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int chk_chr (const char* str, int chr)
{
 while (*str && *str != chr) str++;
 return *str;
}
