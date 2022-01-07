
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_gb18030_even_2 (char const) ;
 scalar_t__ is_gb18030_even_4 (char const) ;
 scalar_t__ is_gb18030_odd (char const) ;

__attribute__((used)) static unsigned int my_ismbchar_gb18030(const char * start, const char * end)
{
 if (end - start <= 1 || !is_gb18030_odd(start[0])) {
  return 0;
 }

 if (is_gb18030_even_2(start[1])) {
  return 2;
 } else if (end - start > 3 && is_gb18030_even_4(start[1]) && is_gb18030_odd(start[2]) && is_gb18030_even_4(start[3])) {
  return 4;
 }

 return 0;
}
