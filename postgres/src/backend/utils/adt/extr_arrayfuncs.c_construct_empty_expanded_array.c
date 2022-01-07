
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int MemoryContext ;
typedef int ExpandedArrayHeader ;
typedef int Datum ;
typedef int ArrayType ;
typedef int ArrayMetaState ;


 scalar_t__ DatumGetEOHP (int ) ;
 int PointerGetDatum (int *) ;
 int * construct_empty_array (int ) ;
 int expand_array (int ,int ,int *) ;
 int pfree (int *) ;

ExpandedArrayHeader *
construct_empty_expanded_array(Oid element_type,
          MemoryContext parentcontext,
          ArrayMetaState *metacache)
{
 ArrayType *array = construct_empty_array(element_type);
 Datum d;

 d = expand_array(PointerGetDatum(array), parentcontext, metacache);
 pfree(array);
 return (ExpandedArrayHeader *) DatumGetEOHP(d);
}
