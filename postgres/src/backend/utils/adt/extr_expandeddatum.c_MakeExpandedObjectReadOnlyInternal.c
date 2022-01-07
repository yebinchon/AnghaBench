
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExpandedObjectHeader ;
typedef int Datum ;


 int * DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 int EOHPGetRODatum (int *) ;
 int VARATT_IS_EXTERNAL_EXPANDED_RW (int ) ;

Datum
MakeExpandedObjectReadOnlyInternal(Datum d)
{
 ExpandedObjectHeader *eohptr;


 if (!VARATT_IS_EXTERNAL_EXPANDED_RW(DatumGetPointer(d)))
  return d;


 eohptr = DatumGetEOHP(d);


 return EOHPGetRODatum(eohptr);
}
