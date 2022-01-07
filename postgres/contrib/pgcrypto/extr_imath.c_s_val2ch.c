
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char toupper (unsigned char) ;

__attribute__((used)) static char
s_val2ch(int v, int caps)
{
 assert(v >= 0);

 if (v < 10)
 {
  return v + '0';
 }
 else
 {
  char out = (v - 10) + 'a';

  if (caps)
  {
   return toupper((unsigned char) out);
  }
  else
  {
   return out;
  }
 }
}
