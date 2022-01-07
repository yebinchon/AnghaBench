
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {int attlen; int attalign; } ;
struct TYPE_7__ {int natts; } ;
typedef int Size ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Datum ;


 scalar_t__ ATT_IS_PACKABLE (TYPE_2__*) ;
 int DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 scalar_t__ EOH_get_flat_size (int ) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 scalar_t__ VARATT_CAN_MAKE_SHORT (int ) ;
 scalar_t__ VARATT_CONVERTED_SHORT_SIZE (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (int ) ;
 int att_addlength_datum (int ,int,int ) ;
 int att_align_datum (int ,int ,int,int ) ;
 int att_align_nominal (int ,int ) ;

Size
heap_compute_data_size(TupleDesc tupleDesc,
        Datum *values,
        bool *isnull)
{
 Size data_length = 0;
 int i;
 int numberOfAttributes = tupleDesc->natts;

 for (i = 0; i < numberOfAttributes; i++)
 {
  Datum val;
  Form_pg_attribute atti;

  if (isnull[i])
   continue;

  val = values[i];
  atti = TupleDescAttr(tupleDesc, i);

  if (ATT_IS_PACKABLE(atti) &&
   VARATT_CAN_MAKE_SHORT(DatumGetPointer(val)))
  {




   data_length += VARATT_CONVERTED_SHORT_SIZE(DatumGetPointer(val));
  }
  else if (atti->attlen == -1 &&
     VARATT_IS_EXTERNAL_EXPANDED(DatumGetPointer(val)))
  {




   data_length = att_align_nominal(data_length, atti->attalign);
   data_length += EOH_get_flat_size(DatumGetEOHP(val));
  }
  else
  {
   data_length = att_align_datum(data_length, atti->attalign,
            atti->attlen, val);
   data_length = att_addlength_datum(data_length, atti->attlen,
             val);
  }
 }

 return data_length;
}
