
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArrayType ;


 int ARRNELEMS (int *) ;
 int ARRPTR (int *) ;
 int isort_cmp ;
 int qunique_arg (int ,int,int,int ,int*) ;
 int * resize_intArrayType (int *,int) ;

ArrayType *
_int_unique(ArrayType *r)
{
 int num = ARRNELEMS(r);
 bool duplicates_found;

 num = qunique_arg(ARRPTR(r), num, sizeof(int), isort_cmp,
       &duplicates_found);

 return resize_intArrayType(r, num);
}
