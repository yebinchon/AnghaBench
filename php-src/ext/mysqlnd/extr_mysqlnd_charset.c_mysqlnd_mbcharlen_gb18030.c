
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_gb18030_even_2 (unsigned int const) ;
 scalar_t__ is_gb18030_even_4 (unsigned int const) ;
 int is_gb18030_odd (unsigned int const) ;

__attribute__((used)) static unsigned int mysqlnd_mbcharlen_gb18030(const unsigned int c)
{
 if (c <= 0xFF) {
  return !is_gb18030_odd(c);
 }
 if (c > 0xFFFF || !is_gb18030_odd((c >> 8) & 0xFF)) {
  return 0;
 }
 if (is_gb18030_even_2((c & 0xFF))) {
     return 2;
 }
 if (is_gb18030_even_4((c & 0xFF))) {
  return 4;
 }

 return 0;
}
