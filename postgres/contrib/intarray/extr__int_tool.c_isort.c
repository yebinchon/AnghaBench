
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 int isort_cmp ;
 int qsort_arg (int *,int,int,int ,void*) ;

bool
isort(int32 *a, int len)
{
 bool r = 0;

 qsort_arg(a, len, sizeof(int32), isort_cmp, (void *) &r);
 return r;
}
