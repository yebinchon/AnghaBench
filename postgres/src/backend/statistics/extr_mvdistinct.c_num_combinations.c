
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
num_combinations(int n)
{
 int k;
 int ncombs = 1;

 for (k = 1; k <= n; k++)
  ncombs *= 2;

 ncombs -= (n + 1);

 return ncombs;
}
