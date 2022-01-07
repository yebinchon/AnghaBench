
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
mda_get_prod(int n, const int *range, int *prod)
{
 int i;

 prod[n - 1] = 1;
 for (i = n - 2; i >= 0; i--)
  prod[i] = prod[i + 1] * range[i + 1];
}
