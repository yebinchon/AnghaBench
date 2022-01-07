
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ilog2(unsigned long v)
{
 int l = 0;
 while ((1UL << l) < v)
  l++;
 return l;
}
