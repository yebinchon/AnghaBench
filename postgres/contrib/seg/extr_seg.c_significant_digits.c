
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
significant_digits(const char *s)
{
 const char *p = s;
 int n,
    c,
    zeroes;

 zeroes = 1;

 for (c = *p; (c == '0' || c == '+' || c == '-') && c != 0; c = *(++p));


 for (c = *p; (c == '0' || c == '.') && c != 0; c = *(++p))
 {
  if (c != '.')
   zeroes++;
 }


 for (c = *p, n = 0; c != 0; c = *(++p))
 {
  if (!((c >= '0' && c <= '9') || (c == '.')))
   break;
  if (c != '.')
   n++;
 }

 if (!n)
  return zeroes;

 return n;
}
