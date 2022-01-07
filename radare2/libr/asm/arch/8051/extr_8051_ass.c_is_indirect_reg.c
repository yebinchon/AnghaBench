
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_str_ansi_nlen (char const*,int) ;
 char tolower (char const) ;

__attribute__((used)) static bool is_indirect_reg(char const*str)
{
 if ( !str) {
  return 0;
 }

 if (str[0] == '@' ) {
  return r_str_ansi_nlen (str, 4) == 3
   && tolower (str[1]) == 'r'
   && (str[2] == '0' || str[2] == '1');
 }

 if (str[0] == '[' ) {
  return r_str_ansi_nlen (str, 5) == 4
   && tolower (str[1]) == 'r'
   && (str[2] == '0' || str[2] == '1')
   && str[3] == ']';
 }

 return 0;
}
