
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_17__ {scalar_t__ er_magic; int flags; scalar_t__ flat_size; int hoff; scalar_t__ hasnull; int data_len; int dnulls; int dvalues; int er_typmod; int er_typeid; TYPE_1__* fvalue; } ;
struct TYPE_16__ {int t_hoff; int * t_bits; int t_infomask; int t_ctid; } ;
struct TYPE_15__ {int natts; } ;
struct TYPE_14__ {scalar_t__ t_len; int t_data; } ;
typedef scalar_t__ Size ;
typedef TYPE_3__* HeapTupleHeader ;
typedef TYPE_4__ ExpandedRecordHeader ;
typedef int ExpandedObjectHeader ;


 int Assert (int) ;
 int ER_FLAG_FVALUE_VALID ;
 int ER_FLAG_HAVE_EXTERNAL ;
 scalar_t__ ER_MAGIC ;
 int HeapTupleHeaderSetDatumLength (TYPE_3__*,scalar_t__) ;
 int HeapTupleHeaderSetNatts (TYPE_3__*,int ) ;
 int HeapTupleHeaderSetTypMod (TYPE_3__*,int ) ;
 int HeapTupleHeaderSetTypeId (TYPE_3__*,int ) ;
 int ItemPointerSetInvalid (int *) ;
 TYPE_2__* expanded_record_get_tupdesc (TYPE_4__*) ;
 int heap_fill_tuple (TYPE_2__*,int ,int ,char*,int ,int *,int *) ;
 int memcpy (TYPE_3__*,int ,scalar_t__) ;
 int memset (TYPE_3__*,int ,scalar_t__) ;

__attribute__((used)) static void
ER_flatten_into(ExpandedObjectHeader *eohptr,
    void *result, Size allocated_size)
{
 ExpandedRecordHeader *erh = (ExpandedRecordHeader *) eohptr;
 HeapTupleHeader tuphdr = (HeapTupleHeader) result;
 TupleDesc tupdesc;

 Assert(erh->er_magic == ER_MAGIC);


 if (erh->flags & ER_FLAG_FVALUE_VALID &&
  !(erh->flags & ER_FLAG_HAVE_EXTERNAL))
 {
  Assert(allocated_size == erh->fvalue->t_len);
  memcpy(tuphdr, erh->fvalue->t_data, allocated_size);

  HeapTupleHeaderSetDatumLength(tuphdr, allocated_size);
  HeapTupleHeaderSetTypeId(tuphdr, erh->er_typeid);
  HeapTupleHeaderSetTypMod(tuphdr, erh->er_typmod);
  return;
 }


 Assert(allocated_size == erh->flat_size);


 tupdesc = expanded_record_get_tupdesc(erh);


 memset(tuphdr, 0, allocated_size);


 HeapTupleHeaderSetDatumLength(tuphdr, allocated_size);
 HeapTupleHeaderSetTypeId(tuphdr, erh->er_typeid);
 HeapTupleHeaderSetTypMod(tuphdr, erh->er_typmod);

 ItemPointerSetInvalid(&(tuphdr->t_ctid));

 HeapTupleHeaderSetNatts(tuphdr, tupdesc->natts);
 tuphdr->t_hoff = erh->hoff;


 heap_fill_tuple(tupdesc,
     erh->dvalues,
     erh->dnulls,
     (char *) tuphdr + erh->hoff,
     erh->data_len,
     &tuphdr->t_infomask,
     (erh->hasnull ? tuphdr->t_bits : ((void*)0)));
}
