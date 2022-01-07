
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
bs_copy_mem(char * d, char * s, int n)
{
  while (n & (~7))
  {
    *(d++) = *(s++);
    *(d++) = *(s++);
    *(d++) = *(s++);
    *(d++) = *(s++);
    *(d++) = *(s++);
    *(d++) = *(s++);
    *(d++) = *(s++);
    *(d++) = *(s++);
    n = n - 8;
  }
  while (n > 0)
  {
    *(d++) = *(s++);
    n--;
  }
}
