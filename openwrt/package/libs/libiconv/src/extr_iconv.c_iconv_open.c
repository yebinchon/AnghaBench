
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 int find_charmap (char const*) ;
 unsigned int find_charset (char const*) ;

iconv_t iconv_open(const char *to, const char *from)
{
 unsigned f, t;
 int m;

 if ((t = find_charset(to)) > 8)
  return -1;

 if ((f = find_charset(from)) < 255)
  return 0 | (t<<1) | (f<<8);

 if ((m = find_charmap(from)) > -1)
  return 1 | (t<<1) | (m<<8);

 return -1;
}
