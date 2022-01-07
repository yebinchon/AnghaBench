
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ctl ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_14__ {int keysize; int entrysize; int match; int hash; } ;
struct TYPE_13__ {TYPE_1__* tupdesc; } ;
struct TYPE_12__ {scalar_t__ tdtypeid; size_t tdtypmod; int tdrefcount; } ;
typedef TYPE_2__ RecordCacheEntry ;
typedef int MemoryContext ;
typedef TYPE_3__ HASHCTL ;


 int Assert (int) ;
 int CacheMemoryContext ;
 int CreateCacheMemoryContext () ;
 TYPE_1__* CreateTupleDescCopy (TYPE_1__*) ;
 int HASH_COMPARE ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int HASH_FUNCTION ;
 int MemSet (TYPE_3__*,int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 int NextRecordTypmod ;
 scalar_t__ RECORDOID ;
 TYPE_1__** RecordCacheArray ;
 int * RecordCacheHash ;
 scalar_t__* RecordIdentifierArray ;
 int ensure_record_cache_typmod_slot_exists (size_t) ;
 TYPE_1__* find_or_make_matching_shared_tupledesc (TYPE_1__*) ;
 int * hash_create (char*,int,TYPE_3__*,int) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 int record_type_typmod_compare ;
 int record_type_typmod_hash ;
 scalar_t__ tupledesc_id_counter ;

void
assign_record_type_typmod(TupleDesc tupDesc)
{
 RecordCacheEntry *recentry;
 TupleDesc entDesc;
 bool found;
 MemoryContext oldcxt;

 Assert(tupDesc->tdtypeid == RECORDOID);

 if (RecordCacheHash == ((void*)0))
 {

  HASHCTL ctl;

  MemSet(&ctl, 0, sizeof(ctl));
  ctl.keysize = sizeof(TupleDesc);
  ctl.entrysize = sizeof(RecordCacheEntry);
  ctl.hash = record_type_typmod_hash;
  ctl.match = record_type_typmod_compare;
  RecordCacheHash = hash_create("Record information cache", 64,
           &ctl,
           HASH_ELEM | HASH_FUNCTION | HASH_COMPARE);


  if (!CacheMemoryContext)
   CreateCacheMemoryContext();
 }


 recentry = (RecordCacheEntry *) hash_search(RecordCacheHash,
            (void *) &tupDesc,
            HASH_ENTER, &found);
 if (found && recentry->tupdesc != ((void*)0))
 {
  tupDesc->tdtypmod = recentry->tupdesc->tdtypmod;
  return;
 }


 recentry->tupdesc = ((void*)0);
 oldcxt = MemoryContextSwitchTo(CacheMemoryContext);


 entDesc = find_or_make_matching_shared_tupledesc(tupDesc);
 if (entDesc == ((void*)0))
 {

  entDesc = CreateTupleDescCopy(tupDesc);
  entDesc->tdrefcount = 1;
  entDesc->tdtypmod = NextRecordTypmod++;
 }
 ensure_record_cache_typmod_slot_exists(entDesc->tdtypmod);
 RecordCacheArray[entDesc->tdtypmod] = entDesc;
 recentry->tupdesc = entDesc;


 RecordIdentifierArray[entDesc->tdtypmod] = ++tupledesc_id_counter;


 tupDesc->tdtypmod = entDesc->tdtypmod;

 MemoryContextSwitchTo(oldcxt);
}
