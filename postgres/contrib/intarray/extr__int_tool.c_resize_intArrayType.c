
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArrayType ;


 int ARRNELEMS (int *) ;
 int ARR_DATA_OFFSET (int *) ;
 int* ARR_DIMS (int *) ;
 int ARR_NDIM (int *) ;
 int Assert (int) ;
 int INT4OID ;
 int SET_VARSIZE (int *,int) ;
 int * construct_empty_array (int ) ;
 scalar_t__ repalloc (int *,int) ;

ArrayType *
resize_intArrayType(ArrayType *a, int num)
{
 int nbytes;
 int i;


 if (num <= 0)
 {
  Assert(num == 0);
  a = construct_empty_array(INT4OID);
  return a;
 }

 if (num == ARRNELEMS(a))
  return a;

 nbytes = ARR_DATA_OFFSET(a) + sizeof(int) * num;

 a = (ArrayType *) repalloc(a, nbytes);

 SET_VARSIZE(a, nbytes);

 for (i = 0; i < ARR_NDIM(a); i++)
 {
  ARR_DIMS(a)[i] = num;
  num = 1;
 }
 return a;
}
