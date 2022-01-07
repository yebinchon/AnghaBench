
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int Datum ;
typedef int ArrayType ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int * NIL ;
 int TEXTOID ;
 int TextDatumGetCString (int ) ;
 int deconstruct_array (int *,int ,int,int,char,int **,int**,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * lappend (int *,int ) ;
 int makeString (int ) ;

__attribute__((used)) static List *
textarray_to_strvaluelist(ArrayType *arr)
{
 Datum *elems;
 bool *nulls;
 int nelems;
 List *list = NIL;
 int i;

 deconstruct_array(arr, TEXTOID, -1, 0, 'i',
       &elems, &nulls, &nelems);

 for (i = 0; i < nelems; i++)
 {
  if (nulls[i])
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("name or argument lists may not contain nulls")));
  list = lappend(list, makeString(TextDatumGetCString(elems[i])));
 }

 return list;
}
