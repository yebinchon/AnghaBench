
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArrayType ;


 scalar_t__ ARRISEMPTY (int *) ;
 int ARRNELEMS (int *) ;
 int* ARRPTR (int *) ;
 int Min (int,int) ;
 int * new_intArrayType (int ) ;
 int pfree (int *) ;
 int * resize_intArrayType (int *,int) ;

ArrayType *
inner_int_inter(ArrayType *a, ArrayType *b)
{
 ArrayType *r;
 int na,
    nb;
 int *da,
      *db,
      *dr;
 int i,
    j,
    k;

 if (ARRISEMPTY(a) || ARRISEMPTY(b))
  return new_intArrayType(0);

 na = ARRNELEMS(a);
 nb = ARRNELEMS(b);
 da = ARRPTR(a);
 db = ARRPTR(b);
 r = new_intArrayType(Min(na, nb));
 dr = ARRPTR(r);

 i = j = k = 0;
 while (i < na && j < nb)
 {
  if (da[i] < db[j])
   i++;
  else if (da[i] == db[j])
  {
   if (k == 0 || dr[k - 1] != db[j])
    dr[k++] = db[j];
   i++;
   j++;
  }
  else
   j++;
 }

 if (k == 0)
 {
  pfree(r);
  return new_intArrayType(0);
 }
 else
  return resize_intArrayType(r, k);
}
