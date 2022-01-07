
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_9__ {scalar_t__ attlen; char attstorage; int atttypmod; int atttypid; int attalign; scalar_t__ attisdropped; } ;
struct TYPE_8__ {TYPE_1__* rd_att; } ;
struct TYPE_7__ {int natts; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* Form_pg_attribute ;


 scalar_t__ BITMAPLEN (int) ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 scalar_t__ SizeofHeapTupleHeader ;
 scalar_t__ TOAST_TUPLE_THRESHOLD ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 scalar_t__ att_align_nominal (scalar_t__,int ) ;
 scalar_t__ type_maximum_size (int ,int ) ;

__attribute__((used)) static bool
heapam_relation_needs_toast_table(Relation rel)
{
 int32 data_length = 0;
 bool maxlength_unknown = 0;
 bool has_toastable_attrs = 0;
 TupleDesc tupdesc = rel->rd_att;
 int32 tuple_length;
 int i;

 for (i = 0; i < tupdesc->natts; i++)
 {
  Form_pg_attribute att = TupleDescAttr(tupdesc, i);

  if (att->attisdropped)
   continue;
  data_length = att_align_nominal(data_length, att->attalign);
  if (att->attlen > 0)
  {

   data_length += att->attlen;
  }
  else
  {
   int32 maxlen = type_maximum_size(att->atttypid,
               att->atttypmod);

   if (maxlen < 0)
    maxlength_unknown = 1;
   else
    data_length += maxlen;
   if (att->attstorage != 'p')
    has_toastable_attrs = 1;
  }
 }
 if (!has_toastable_attrs)
  return 0;
 if (maxlength_unknown)
  return 1;
 tuple_length = MAXALIGN(SizeofHeapTupleHeader +
       BITMAPLEN(tupdesc->natts)) +
  MAXALIGN(data_length);
 return (tuple_length > TOAST_TUPLE_THRESHOLD);
}
