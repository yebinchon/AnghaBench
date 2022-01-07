
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlena {int dummy; } ;
typedef scalar_t__ Size ;
typedef int ExpandedObjectHeader ;
typedef int Datum ;


 int * DatumGetEOHP (int ) ;
 struct varlena* DatumGetPointer (int ) ;
 int EOH_flatten_into (int *,void*,scalar_t__) ;
 scalar_t__ EOH_get_flat_size (int *) ;
 int PointerGetDatum (char*) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (struct varlena*) ;
 scalar_t__ VARSIZE_ANY (struct varlena*) ;
 scalar_t__ datumGetSize (int ,int,int) ;
 int memcpy (char*,struct varlena*,scalar_t__) ;
 scalar_t__ palloc (scalar_t__) ;

Datum
datumCopy(Datum value, bool typByVal, int typLen)
{
 Datum res;

 if (typByVal)
  res = value;
 else if (typLen == -1)
 {

  struct varlena *vl = (struct varlena *) DatumGetPointer(value);

  if (VARATT_IS_EXTERNAL_EXPANDED(vl))
  {

   ExpandedObjectHeader *eoh = DatumGetEOHP(value);
   Size resultsize;
   char *resultptr;

   resultsize = EOH_get_flat_size(eoh);
   resultptr = (char *) palloc(resultsize);
   EOH_flatten_into(eoh, (void *) resultptr, resultsize);
   res = PointerGetDatum(resultptr);
  }
  else
  {

   Size realSize;
   char *resultptr;

   realSize = (Size) VARSIZE_ANY(vl);
   resultptr = (char *) palloc(realSize);
   memcpy(resultptr, vl, realSize);
   res = PointerGetDatum(resultptr);
  }
 }
 else
 {

  Size realSize;
  char *resultptr;

  realSize = datumGetSize(value, typByVal, typLen);

  resultptr = (char *) palloc(realSize);
  memcpy(resultptr, DatumGetPointer(value), realSize);
  res = PointerGetDatum(resultptr);
 }
 return res;
}
