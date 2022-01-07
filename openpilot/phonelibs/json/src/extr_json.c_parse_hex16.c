
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static bool parse_hex16(const char **sp, uint16_t *out)
{
 const char *s = *sp;
 uint16_t ret = 0;
 uint16_t i;
 uint16_t tmp;
 char c;

 for (i = 0; i < 4; i++) {
  c = *s++;
  if (c >= '0' && c <= '9')
   tmp = c - '0';
  else if (c >= 'A' && c <= 'F')
   tmp = c - 'A' + 10;
  else if (c >= 'a' && c <= 'f')
   tmp = c - 'a' + 10;
  else
   return 0;

  ret <<= 4;
  ret += tmp;
 }

 if (out)
  *out = ret;
 *sp = s;
 return 1;
}
