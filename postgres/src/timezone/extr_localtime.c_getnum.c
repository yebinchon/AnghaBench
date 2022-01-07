
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_digit (char) ;

__attribute__((used)) static const char *
getnum(const char *strp, int *const nump, const int min, const int max)
{
 char c;
 int num;

 if (strp == ((void*)0) || !is_digit(c = *strp))
  return ((void*)0);
 num = 0;
 do
 {
  num = num * 10 + (c - '0');
  if (num > max)
   return ((void*)0);
  c = *++strp;
 } while (is_digit(c));
 if (num < min)
  return ((void*)0);
 *nump = num;
 return strp;
}
