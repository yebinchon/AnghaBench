
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;
typedef int ArrayType ;


 int * construct_md_array (int *,int *,int,int*,int*,int ,int,int,char) ;

ArrayType *
construct_array(Datum *elems, int nelems,
    Oid elmtype,
    int elmlen, bool elmbyval, char elmalign)
{
 int dims[1];
 int lbs[1];

 dims[0] = nelems;
 lbs[0] = 1;

 return construct_md_array(elems, ((void*)0), 1, dims, lbs,
         elmtype, elmlen, elmbyval, elmalign);
}
