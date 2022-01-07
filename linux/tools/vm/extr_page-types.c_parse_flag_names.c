
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int parse_flag_name (char const*,int) ;

__attribute__((used)) static uint64_t parse_flag_names(const char *str, int all)
{
 const char *p = str;
 uint64_t flags = 0;

 while (1) {
  if (*p == ',' || *p == '=' || *p == '\0') {
   if ((*str != '~') || (*str == '~' && all && *++str))
    flags |= parse_flag_name(str, p - str);
   if (*p != ',')
    break;
   str = p + 1;
  }
  p++;
 }

 return flags;
}
