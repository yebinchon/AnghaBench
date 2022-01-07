
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ArrayType ;


 int * ARRPTR (int *) ;
 int * new_intArrayType (int) ;

ArrayType *
int_to_intset(int32 n)
{
 ArrayType *result;
 int32 *aa;

 result = new_intArrayType(1);
 aa = ARRPTR(result);
 aa[0] = n;
 return result;
}
