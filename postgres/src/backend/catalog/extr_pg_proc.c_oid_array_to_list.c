
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;
typedef int Datum ;
typedef int ArrayType ;


 int * DatumGetArrayTypeP (int ) ;
 int * NIL ;
 int OIDOID ;
 int deconstruct_array (int *,int ,int,int,char,int **,int *,int*) ;
 int * lappend_oid (int *,int ) ;

List *
oid_array_to_list(Datum datum)
{
 ArrayType *array = DatumGetArrayTypeP(datum);
 Datum *values;
 int nelems;
 int i;
 List *result = NIL;

 deconstruct_array(array,
       OIDOID,
       sizeof(Oid), 1, 'i',
       &values, ((void*)0), &nelems);
 for (i = 0; i < nelems; i++)
  result = lappend_oid(result, values[i]);
 return result;
}
