
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
ArrayGetOffset0(int n, const int *tup, const int *scale)
{
 int i,
    lin = 0;

 for (i = 0; i < n; i++)
  lin += tup[i] * scale[i];
 return lin;
}
