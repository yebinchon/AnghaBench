
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArrayType ;


 scalar_t__ ARRISEMPTY (int *) ;
 int ARRNELEMS (int *) ;
 int* ARRPTR (int *) ;
 int CHECKARRVALID (int *) ;
 int * _int_unique (int *) ;
 int * copy_intArrayType (int *) ;
 int * new_intArrayType (int) ;
 int * resize_intArrayType (int *,int) ;

ArrayType *
inner_int_union(ArrayType *a, ArrayType *b)
{
 ArrayType *r = ((void*)0);

 CHECKARRVALID(a);
 CHECKARRVALID(b);

 if (ARRISEMPTY(a) && ARRISEMPTY(b))
  return new_intArrayType(0);
 if (ARRISEMPTY(a))
  r = copy_intArrayType(b);
 if (ARRISEMPTY(b))
  r = copy_intArrayType(a);

 if (!r)
 {
  int na = ARRNELEMS(a),
     nb = ARRNELEMS(b);
  int *da = ARRPTR(a),
       *db = ARRPTR(b);
  int i,
     j,
       *dr;

  r = new_intArrayType(na + nb);
  dr = ARRPTR(r);


  i = j = 0;
  while (i < na && j < nb)
  {
   if (da[i] == db[j])
   {
    *dr++ = da[i++];
    j++;
   }
   else if (da[i] < db[j])
    *dr++ = da[i++];
   else
    *dr++ = db[j++];
  }

  while (i < na)
   *dr++ = da[i++];
  while (j < nb)
   *dr++ = db[j++];

  r = resize_intArrayType(r, dr - ARRPTR(r));
 }

 if (ARRNELEMS(r) > 1)
  r = _int_unique(r);

 return r;
}
