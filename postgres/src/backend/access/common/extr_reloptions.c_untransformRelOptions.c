
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int List ;
typedef int Datum ;
typedef int ArrayType ;


 int * DatumGetArrayTypeP (int ) ;
 int DatumGetPointer (int ) ;
 int * NIL ;
 int PointerIsValid (int ) ;
 int TEXTOID ;
 char* TextDatumGetCString (int ) ;
 int deconstruct_array (int *,int ,int,int,char,int **,int *,int*) ;
 int * lappend (int *,int ) ;
 int makeDefElem (int ,int *,int) ;
 scalar_t__ makeString (int ) ;
 int pstrdup (char*) ;
 char* strchr (char*,char) ;

List *
untransformRelOptions(Datum options)
{
 List *result = NIL;
 ArrayType *array;
 Datum *optiondatums;
 int noptions;
 int i;


 if (!PointerIsValid(DatumGetPointer(options)))
  return result;

 array = DatumGetArrayTypeP(options);

 deconstruct_array(array, TEXTOID, -1, 0, 'i',
       &optiondatums, ((void*)0), &noptions);

 for (i = 0; i < noptions; i++)
 {
  char *s;
  char *p;
  Node *val = ((void*)0);

  s = TextDatumGetCString(optiondatums[i]);
  p = strchr(s, '=');
  if (p)
  {
   *p++ = '\0';
   val = (Node *) makeString(pstrdup(p));
  }
  result = lappend(result, makeDefElem(pstrdup(s), val, -1));
 }

 return result;
}
