
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* fstartptr; char* fendptr; int hdr; int flags; TYPE_2__* fvalue; int er_typmod; int er_typeid; int er_decltypeid; int er_magic; } ;
struct TYPE_7__ {int t_len; scalar_t__ t_data; } ;
struct TYPE_6__ {int t_data; int t_tableOid; int t_self; int t_len; } ;
typedef int MemoryContext ;
typedef int HeapTupleHeader ;
typedef TYPE_1__ HeapTupleData ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__ ExpandedRecordHeader ;
typedef int Datum ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 int DatumGetHeapTupleHeader (int ) ;
 int EOHPGetRWDatum (int *) ;
 int EOH_init_header (int *,int *,int ) ;
 int ER_FLAG_FVALUE_ALLOCED ;
 int ER_FLAG_FVALUE_VALID ;
 int ER_MAGIC ;
 int ER_methods ;
 int HeapTupleHeaderGetDatumLength (int ) ;
 int HeapTupleHeaderGetTypMod (int ) ;
 int HeapTupleHeaderGetTypeId (int ) ;
 int HeapTupleHeaderHasExternal (int ) ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_2__* heap_copytuple (TYPE_1__*) ;

Datum
make_expanded_record_from_datum(Datum recorddatum, MemoryContext parentcontext)
{
 ExpandedRecordHeader *erh;
 HeapTupleHeader tuphdr;
 HeapTupleData tmptup;
 HeapTuple newtuple;
 MemoryContext objcxt;
 MemoryContext oldcxt;






 objcxt = AllocSetContextCreate(parentcontext,
           "expanded record",
           ALLOCSET_DEFAULT_SIZES);


 erh = (ExpandedRecordHeader *)
  MemoryContextAllocZero(objcxt, sizeof(ExpandedRecordHeader));

 EOH_init_header(&erh->hdr, &ER_methods, objcxt);
 erh->er_magic = ER_MAGIC;






 tuphdr = DatumGetHeapTupleHeader(recorddatum);

 tmptup.t_len = HeapTupleHeaderGetDatumLength(tuphdr);
 ItemPointerSetInvalid(&(tmptup.t_self));
 tmptup.t_tableOid = InvalidOid;
 tmptup.t_data = tuphdr;

 oldcxt = MemoryContextSwitchTo(objcxt);
 newtuple = heap_copytuple(&tmptup);
 erh->flags |= ER_FLAG_FVALUE_ALLOCED;
 MemoryContextSwitchTo(oldcxt);


 erh->er_decltypeid = erh->er_typeid = HeapTupleHeaderGetTypeId(tuphdr);
 erh->er_typmod = HeapTupleHeaderGetTypMod(tuphdr);


 erh->fvalue = newtuple;
 erh->fstartptr = (char *) newtuple->t_data;
 erh->fendptr = ((char *) newtuple->t_data) + newtuple->t_len;
 erh->flags |= ER_FLAG_FVALUE_VALID;


 Assert(!HeapTupleHeaderHasExternal(tuphdr));
 return EOHPGetRWDatum(&erh->hdr);
}
