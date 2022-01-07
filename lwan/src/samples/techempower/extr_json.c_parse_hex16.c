
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

 for (i = 0; i < 4; i++) {
  char c = *s++;
  if (c >= '0' && c <= '9')
   tmp = (uint16_t)(c - '0');
  else if (c >= 'A' && c <= 'F')
   tmp = (uint16_t)(c - 'A' + 10);
  else if (c >= 'a' && c <= 'f')
   tmp = (uint16_t)(c - 'a' + 10);
  else
   return 0;

  ret = (uint16_t)((ret << 4) + tmp);
 }

 if (out)
  *out = ret;
 *sp = s;
 return 1;
}
