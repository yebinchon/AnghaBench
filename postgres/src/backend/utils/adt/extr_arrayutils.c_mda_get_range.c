
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
mda_get_range(int n, int *span, const int *st, const int *endp)
{
 int i;

 for (i = 0; i < n; i++)
  span[i] = endp[i] - st[i] + 1;
}
