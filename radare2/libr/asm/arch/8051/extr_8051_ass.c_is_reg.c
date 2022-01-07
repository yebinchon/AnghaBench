
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_str_ansi_nlen (char const*,int) ;
 char tolower (char const) ;

__attribute__((used)) static bool is_reg(char const*str)
{
 return str && tolower (str[0]) == 'r' && r_str_ansi_nlen (str, 3) == 2
  && '0' <= str[1] && str[1] <= '7';
}
