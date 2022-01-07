
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
mda_get_offset_values(int n, int *dist, const int *prod, const int *span)
{
 int i,
    j;

 dist[n - 1] = 0;
 for (j = n - 2; j >= 0; j--)
 {
  dist[j] = prod[j] - 1;
  for (i = j + 1; i < n; i++)
   dist[j] -= (span[i] - 1) * prod[i];
 }
}
