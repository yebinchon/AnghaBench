
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_14__ {int t_len; int t_tableOid; int t_self; TYPE_2__* t_data; } ;
struct TYPE_13__ {int t_hoff; int * t_bits; int t_infomask; int t_ctid; } ;
struct TYPE_12__ {int natts; int tdtypmod; int tdtypeid; } ;
typedef int Size ;
typedef TYPE_2__* HeapTupleHeader ;
typedef TYPE_3__* HeapTuple ;
typedef int Datum ;


 int BITMAPLEN (int) ;
 int ERRCODE_TOO_MANY_COLUMNS ;
 int ERROR ;
 int HEAPTUPLESIZE ;
 int HeapTupleHeaderData ;
 int HeapTupleHeaderSetDatumLength (TYPE_2__*,int) ;
 int HeapTupleHeaderSetNatts (TYPE_2__*,int) ;
 int HeapTupleHeaderSetTypMod (TYPE_2__*,int ) ;
 int HeapTupleHeaderSetTypeId (TYPE_2__*,int ) ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 int MAXALIGN (int) ;
 int MaxTupleAttributeNumber ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,int) ;
 int heap_compute_data_size (TYPE_1__*,int *,int*) ;
 int heap_fill_tuple (TYPE_1__*,int *,int*,char*,int,int *,int *) ;
 int offsetof (int ,int ) ;
 scalar_t__ palloc0 (int) ;
 int t_bits ;

HeapTuple
heap_form_tuple(TupleDesc tupleDescriptor,
    Datum *values,
    bool *isnull)
{
 HeapTuple tuple;
 HeapTupleHeader td;
 Size len,
    data_len;
 int hoff;
 bool hasnull = 0;
 int numberOfAttributes = tupleDescriptor->natts;
 int i;

 if (numberOfAttributes > MaxTupleAttributeNumber)
  ereport(ERROR,
    (errcode(ERRCODE_TOO_MANY_COLUMNS),
     errmsg("number of columns (%d) exceeds limit (%d)",
      numberOfAttributes, MaxTupleAttributeNumber)));




 for (i = 0; i < numberOfAttributes; i++)
 {
  if (isnull[i])
  {
   hasnull = 1;
   break;
  }
 }




 len = offsetof(HeapTupleHeaderData, t_bits);

 if (hasnull)
  len += BITMAPLEN(numberOfAttributes);

 hoff = len = MAXALIGN(len);

 data_len = heap_compute_data_size(tupleDescriptor, values, isnull);

 len += data_len;





 tuple = (HeapTuple) palloc0(HEAPTUPLESIZE + len);
 tuple->t_data = td = (HeapTupleHeader) ((char *) tuple + HEAPTUPLESIZE);






 tuple->t_len = len;
 ItemPointerSetInvalid(&(tuple->t_self));
 tuple->t_tableOid = InvalidOid;

 HeapTupleHeaderSetDatumLength(td, len);
 HeapTupleHeaderSetTypeId(td, tupleDescriptor->tdtypeid);
 HeapTupleHeaderSetTypMod(td, tupleDescriptor->tdtypmod);

 ItemPointerSetInvalid(&(td->t_ctid));

 HeapTupleHeaderSetNatts(td, numberOfAttributes);
 td->t_hoff = hoff;

 heap_fill_tuple(tupleDescriptor,
     values,
     isnull,
     (char *) td + hoff,
     data_len,
     &td->t_infomask,
     (hasnull ? td->t_bits : ((void*)0)));

 return tuple;
}
