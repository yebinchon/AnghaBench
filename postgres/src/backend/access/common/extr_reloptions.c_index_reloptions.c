
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;
typedef int * (* amoptions_function ) (int ,int) ;
typedef int Datum ;


 int Assert (int ) ;
 int DatumGetPointer (int ) ;
 int PointerIsValid (int ) ;

bytea *
index_reloptions(amoptions_function amoptions, Datum reloptions, bool validate)
{
 Assert(amoptions != ((void*)0));


 if (!PointerIsValid(DatumGetPointer(reloptions)))
  return ((void*)0);

 return amoptions(reloptions, validate);
}
