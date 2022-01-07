
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int Datum ;
typedef int ArrayType ;


 int * NIL ;
 int TEXTOID ;
 int TextDatumGetCString (int ) ;
 int deconstruct_array (int *,int ,int,int,char,int **,int *,int*) ;
 int * lappend (int *,int ) ;
 int makeString (int ) ;

__attribute__((used)) static List *
textarray_to_stringlist(ArrayType *textarray)
{
 Datum *elems;
 int nelems,
    i;
 List *res = NIL;

 deconstruct_array(textarray,
       TEXTOID, -1, 0, 'i',
       &elems, ((void*)0), &nelems);

 if (nelems == 0)
  return NIL;

 for (i = 0; i < nelems; i++)
  res = lappend(res, makeString(TextDatumGetCString(elems[i])));

 return res;
}
