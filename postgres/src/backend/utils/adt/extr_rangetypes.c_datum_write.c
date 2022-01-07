
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int Size ;
typedef char* Pointer ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetCString (int ) ;
 char* DatumGetPointer (int ) ;
 int ERROR ;
 int SET_VARSIZE_SHORT (char*,int) ;
 scalar_t__ TYPE_IS_PACKABLE (int,char) ;
 scalar_t__ VARATT_CAN_MAKE_SHORT (char*) ;
 int VARATT_CONVERTED_SHORT_SIZE (char*) ;
 scalar_t__ VARATT_IS_EXTERNAL (char*) ;
 scalar_t__ VARATT_IS_SHORT (char*) ;
 char* VARDATA (char*) ;
 int VARSIZE (char*) ;
 int VARSIZE_SHORT (char*) ;
 scalar_t__ att_align_nominal (char*,char) ;
 int elog (int ,char*) ;
 int memcpy (char*,char*,int) ;
 int store_att_byval (char*,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static Pointer
datum_write(Pointer ptr, Datum datum, bool typbyval, char typalign,
   int16 typlen, char typstorage)
{
 Size data_length;

 if (typbyval)
 {

  ptr = (char *) att_align_nominal(ptr, typalign);
  store_att_byval(ptr, datum, typlen);
  data_length = typlen;
 }
 else if (typlen == -1)
 {

  Pointer val = DatumGetPointer(datum);

  if (VARATT_IS_EXTERNAL(val))
  {




   elog(ERROR, "cannot store a toast pointer inside a range");
   data_length = 0;
  }
  else if (VARATT_IS_SHORT(val))
  {

   data_length = VARSIZE_SHORT(val);
   memcpy(ptr, val, data_length);
  }
  else if (TYPE_IS_PACKABLE(typlen, typstorage) &&
     VARATT_CAN_MAKE_SHORT(val))
  {

   data_length = VARATT_CONVERTED_SHORT_SIZE(val);
   SET_VARSIZE_SHORT(ptr, data_length);
   memcpy(ptr + 1, VARDATA(val), data_length - 1);
  }
  else
  {

   ptr = (char *) att_align_nominal(ptr, typalign);
   data_length = VARSIZE(val);
   memcpy(ptr, val, data_length);
  }
 }
 else if (typlen == -2)
 {

  Assert(typalign == 'c');
  data_length = strlen(DatumGetCString(datum)) + 1;
  memcpy(ptr, DatumGetPointer(datum), data_length);
 }
 else
 {

  ptr = (char *) att_align_nominal(ptr, typalign);
  Assert(typlen > 0);
  data_length = typlen;
  memcpy(ptr, DatumGetPointer(datum), data_length);
 }

 ptr += data_length;

 return ptr;
}
