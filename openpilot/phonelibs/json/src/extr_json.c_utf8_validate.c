
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8_validate_cz (char const*) ;

__attribute__((used)) static bool utf8_validate(const char *s)
{
 int len;

 for (; *s != 0; s += len) {
  len = utf8_validate_cz(s);
  if (len == 0)
   return 0;
 }

 return 1;
}
