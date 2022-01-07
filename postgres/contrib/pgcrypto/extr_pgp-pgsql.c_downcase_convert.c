
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 char* palloc (int) ;

__attribute__((used)) static char *
downcase_convert(const uint8 *s, int len)
{
 int c,
    i;
 char *res = palloc(len + 1);

 for (i = 0; i < len; i++)
 {
  c = s[i];
  if (c >= 'A' && c <= 'Z')
   c += 'a' - 'A';
  res[i] = c;
 }
 res[len] = 0;
 return res;
}
