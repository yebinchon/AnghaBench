
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char varlena ;
typedef scalar_t__ Size ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERRCODE_DATA_EXCEPTION ;
 int ERROR ;
 int PointerIsValid (char*) ;
 scalar_t__ VARSIZE_ANY (char*) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ strlen (char*) ;

Size
datumGetSize(Datum value, bool typByVal, int typLen)
{
 Size size;

 if (typByVal)
 {

  Assert(typLen > 0 && typLen <= sizeof(Datum));
  size = (Size) typLen;
 }
 else
 {
  if (typLen > 0)
  {

   size = (Size) typLen;
  }
  else if (typLen == -1)
  {

   struct varlena *s = (struct varlena *) DatumGetPointer(value);

   if (!PointerIsValid(s))
    ereport(ERROR,
      (errcode(ERRCODE_DATA_EXCEPTION),
       errmsg("invalid Datum pointer")));

   size = (Size) VARSIZE_ANY(s);
  }
  else if (typLen == -2)
  {

   char *s = (char *) DatumGetPointer(value);

   if (!PointerIsValid(s))
    ereport(ERROR,
      (errcode(ERRCODE_DATA_EXCEPTION),
       errmsg("invalid Datum pointer")));

   size = (Size) (strlen(s) + 1);
  }
  else
  {
   elog(ERROR, "invalid typLen: %d", typLen);
   size = 0;
  }
 }

 return size;
}
