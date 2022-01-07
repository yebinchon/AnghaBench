
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
skipheader (int (*getin) (void *in), void *in)
{
  int i;

  do
    {
      i = getin (in);
      if (i < 0)
 return (-1);
    }
  while (i & 0x80);

  return (0);
}
