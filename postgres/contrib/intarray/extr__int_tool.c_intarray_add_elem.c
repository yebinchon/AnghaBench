
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ArrayType ;


 int ARRNELEMS (int *) ;
 int* ARRPTR (int *) ;
 int CHECKARRVALID (int *) ;
 int memcpy (int*,int*,int) ;
 int * new_intArrayType (int) ;

ArrayType *
intarray_add_elem(ArrayType *a, int32 elem)
{
 ArrayType *result;
 int32 *r;
 int32 c;

 CHECKARRVALID(a);
 c = ARRNELEMS(a);
 result = new_intArrayType(c + 1);
 r = ARRPTR(result);
 if (c > 0)
  memcpy(r, ARRPTR(a), c * sizeof(int32));
 r[c] = elem;
 return result;
}
