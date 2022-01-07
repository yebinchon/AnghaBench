
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ArrayType ;


 int ARRNELEMS (int *) ;
 int ARRPTR (int *) ;
 int memcpy (int ,int ,int) ;
 int * new_intArrayType (int) ;

ArrayType *
copy_intArrayType(ArrayType *a)
{
 ArrayType *r;
 int n = ARRNELEMS(a);

 r = new_intArrayType(n);
 memcpy(ARRPTR(r), ARRPTR(a), n * sizeof(int32));
 return r;
}
