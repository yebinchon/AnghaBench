
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ palloc (int) ;
 int random () ;

__attribute__((used)) static int *
GetPermutation(int size)
{
 int *permutation;
 int i;

 permutation = (int *) palloc(size * sizeof(int));

 permutation[0] = 0;
 for (i = 1; i < size; i++)
 {
  int j = random() % (i + 1);

  if (j < i)
   permutation[i] = permutation[j];
  permutation[j] = i;
 }

 return permutation;
}
