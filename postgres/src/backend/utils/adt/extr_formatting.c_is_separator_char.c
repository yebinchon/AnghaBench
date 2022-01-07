
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
is_separator_char(const char *str)
{

 return (*str > 0x20 && *str < 0x7F &&
   !(*str >= 'A' && *str <= 'Z') &&
   !(*str >= 'a' && *str <= 'z') &&
   !(*str >= '0' && *str <= '9'));
}
