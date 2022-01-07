
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArrayType ;


 int ARRNELEMS (int *) ;
 int* ARRPTR (int *) ;

bool
inner_int_overlap(ArrayType *a, ArrayType *b)
{
 int na,
    nb;
 int i,
    j;
 int *da,
      *db;

 na = ARRNELEMS(a);
 nb = ARRNELEMS(b);
 da = ARRPTR(a);
 db = ARRPTR(b);

 i = j = 0;
 while (i < na && j < nb)
 {
  if (da[i] < db[j])
   i++;
  else if (da[i] == db[j])
   return 1;
  else
   j++;
 }

 return 0;
}
