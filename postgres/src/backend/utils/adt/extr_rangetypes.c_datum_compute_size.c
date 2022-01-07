
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int Size ;
typedef int Datum ;


 int DatumGetPointer (int ) ;
 scalar_t__ TYPE_IS_PACKABLE (int ,char) ;
 scalar_t__ VARATT_CAN_MAKE_SHORT (int ) ;
 scalar_t__ VARATT_CONVERTED_SHORT_SIZE (int ) ;
 int att_addlength_datum (int ,int ,int ) ;
 int att_align_datum (int ,char,int ,int ) ;

__attribute__((used)) static Size
datum_compute_size(Size data_length, Datum val, bool typbyval, char typalign,
       int16 typlen, char typstorage)
{
 if (TYPE_IS_PACKABLE(typlen, typstorage) &&
  VARATT_CAN_MAKE_SHORT(DatumGetPointer(val)))
 {




  data_length += VARATT_CONVERTED_SHORT_SIZE(DatumGetPointer(val));
 }
 else
 {
  data_length = att_align_datum(data_length, typalign, typlen, val);
  data_length = att_addlength_datum(data_length, typlen, val);
 }

 return data_length;
}
