
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int Datum ;


 int DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 scalar_t__ EOH_get_flat_size (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (int ) ;
 scalar_t__ datumGetSize (int ,int,int) ;

Size
datumEstimateSpace(Datum value, bool isnull, bool typByVal, int typLen)
{
 Size sz = sizeof(int);

 if (!isnull)
 {

  if (typByVal)
   sz += sizeof(Datum);
  else if (typLen == -1 &&
     VARATT_IS_EXTERNAL_EXPANDED(DatumGetPointer(value)))
  {

   sz += EOH_get_flat_size(DatumGetEOHP(value));
  }
  else
   sz += datumGetSize(value, typByVal, typLen);
 }

 return sz;
}
