
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
typedef int bits8 ;
struct TYPE_4__ {char attalign; int attlen; scalar_t__ attbyval; } ;
typedef int Size ;
typedef int Pointer ;
typedef TYPE_1__* Form_pg_attribute ;
typedef int ExpandedObjectHeader ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetCString (int ) ;
 int * DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 int EOH_flatten_into (int *,char*,int) ;
 int EOH_get_flat_size (int *) ;
 int HEAP_HASEXTERNAL ;
 int HEAP_HASNULL ;
 int HEAP_HASVARWIDTH ;
 int HIGHBIT ;
 int SET_VARSIZE_SHORT (char*,int) ;
 scalar_t__ VARATT_CAN_MAKE_SHORT (int ) ;
 int VARATT_CONVERTED_SHORT_SIZE (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (int ) ;
 scalar_t__ VARATT_IS_SHORT (int ) ;
 int VARDATA (int ) ;
 scalar_t__ VARLENA_ATT_IS_PACKABLE (TYPE_1__*) ;
 int VARSIZE (int ) ;
 int VARSIZE_EXTERNAL (int ) ;
 int VARSIZE_SHORT (int ) ;
 scalar_t__ att_align_nominal (char*,char) ;
 int memcpy (char*,int ,int) ;
 int store_att_byval (char*,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static inline void
fill_val(Form_pg_attribute att,
   bits8 **bit,
   int *bitmask,
   char **dataP,
   uint16 *infomask,
   Datum datum,
   bool isnull)
{
 Size data_length;
 char *data = *dataP;





 if (bit != ((void*)0))
 {
  if (*bitmask != HIGHBIT)
   *bitmask <<= 1;
  else
  {
   *bit += 1;
   **bit = 0x0;
   *bitmask = 1;
  }

  if (isnull)
  {
   *infomask |= HEAP_HASNULL;
   return;
  }

  **bit |= *bitmask;
 }





 if (att->attbyval)
 {

  data = (char *) att_align_nominal(data, att->attalign);
  store_att_byval(data, datum, att->attlen);
  data_length = att->attlen;
 }
 else if (att->attlen == -1)
 {

  Pointer val = DatumGetPointer(datum);

  *infomask |= HEAP_HASVARWIDTH;
  if (VARATT_IS_EXTERNAL(val))
  {
   if (VARATT_IS_EXTERNAL_EXPANDED(val))
   {




    ExpandedObjectHeader *eoh = DatumGetEOHP(datum);

    data = (char *) att_align_nominal(data,
              att->attalign);
    data_length = EOH_get_flat_size(eoh);
    EOH_flatten_into(eoh, data, data_length);
   }
   else
   {
    *infomask |= HEAP_HASEXTERNAL;

    data_length = VARSIZE_EXTERNAL(val);
    memcpy(data, val, data_length);
   }
  }
  else if (VARATT_IS_SHORT(val))
  {

   data_length = VARSIZE_SHORT(val);
   memcpy(data, val, data_length);
  }
  else if (VARLENA_ATT_IS_PACKABLE(att) &&
     VARATT_CAN_MAKE_SHORT(val))
  {

   data_length = VARATT_CONVERTED_SHORT_SIZE(val);
   SET_VARSIZE_SHORT(data, data_length);
   memcpy(data + 1, VARDATA(val), data_length - 1);
  }
  else
  {

   data = (char *) att_align_nominal(data,
             att->attalign);
   data_length = VARSIZE(val);
   memcpy(data, val, data_length);
  }
 }
 else if (att->attlen == -2)
 {

  *infomask |= HEAP_HASVARWIDTH;
  Assert(att->attalign == 'c');
  data_length = strlen(DatumGetCString(datum)) + 1;
  memcpy(data, DatumGetPointer(datum), data_length);
 }
 else
 {

  data = (char *) att_align_nominal(data, att->attalign);
  Assert(att->attlen > 0);
  data_length = att->attlen;
  memcpy(data, DatumGetPointer(datum), data_length);
 }

 data += data_length;
 *dataP = data;
}
