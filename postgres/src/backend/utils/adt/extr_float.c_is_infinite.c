
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isinf (double) ;

int
is_infinite(double val)
{
 int inf = isinf(val);

 if (inf == 0)
  return 0;
 else if (val > 0)
  return 1;
 else
  return -1;
}
