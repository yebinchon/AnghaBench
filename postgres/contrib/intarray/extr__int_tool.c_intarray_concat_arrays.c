
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ArrayType ;


 int ARRNELEMS (int *) ;
 scalar_t__ ARRPTR (int *) ;
 int CHECKARRVALID (int *) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int * new_intArrayType (int) ;

ArrayType *
intarray_concat_arrays(ArrayType *a, ArrayType *b)
{
 ArrayType *result;
 int32 ac = ARRNELEMS(a);
 int32 bc = ARRNELEMS(b);

 CHECKARRVALID(a);
 CHECKARRVALID(b);
 result = new_intArrayType(ac + bc);
 if (ac)
  memcpy(ARRPTR(result), ARRPTR(a), ac * sizeof(int32));
 if (bc)
  memcpy(ARRPTR(result) + ac, ARRPTR(b), bc * sizeof(int32));
 return result;
}
