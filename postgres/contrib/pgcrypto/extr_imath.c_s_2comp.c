
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short CHAR_BIT ;
 unsigned short UCHAR_MAX ;

__attribute__((used)) static void
s_2comp(unsigned char *buf, int len)
{
 unsigned short s = 1;

 for (int i = len - 1; i >= 0; --i)
 {
  unsigned char c = ~buf[i];

  s = c + s;
  c = s & UCHAR_MAX;
  s >>= CHAR_BIT;

  buf[i] = c;
 }


}
