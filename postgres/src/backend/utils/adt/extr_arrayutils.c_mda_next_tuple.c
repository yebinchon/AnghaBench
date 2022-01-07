
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
mda_next_tuple(int n, int *curr, const int *span)
{
 int i;

 if (n <= 0)
  return -1;

 curr[n - 1] = (curr[n - 1] + 1) % span[n - 1];
 for (i = n - 1; i && curr[i] == 0; i--)
  curr[i - 1] = (curr[i - 1] + 1) % span[i - 1];

 if (i)
  return i;
 if (curr[0])
  return 0;

 return -1;
}
