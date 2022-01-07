
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char TOUPPER (char) ;
 scalar_t__ xisdigit (char) ;

__attribute__((used)) static char xchartohex(char c)
{
 if (xisdigit(c))
  return c - '0';

 c = TOUPPER(c);
 if (c >= 'A' && c <= 'F')
  return c - 'A' + 10;

 return c;
}
