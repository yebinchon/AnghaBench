
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_10__ {TYPE_2__* tupDesc; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_13__ {int shared_typmod_table; int area; int * shared_typmod_registry; } ;
struct TYPE_12__ {int shared_tupdesc; } ;
struct TYPE_11__ {size_t tdtypmod; int tdrefcount; } ;
typedef TYPE_3__ SharedTypmodTableEntry ;
typedef scalar_t__ Oid ;


 int Assert (int) ;
 TYPE_9__* CurrentSession ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ RECORDOID ;
 TYPE_2__** RecordCacheArray ;
 size_t RecordCacheArrayLen ;
 scalar_t__* RecordIdentifierArray ;
 int TYPECACHE_TUPDESC ;
 scalar_t__ dsa_get_address (int ,int ) ;
 TYPE_3__* dshash_find (int ,size_t*,int) ;
 int dshash_release_lock (int ,TYPE_3__*) ;
 int ensure_record_cache_typmod_slot_exists (size_t) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int format_type_be (scalar_t__) ;
 TYPE_1__* lookup_type_cache (scalar_t__,int ) ;
 scalar_t__ tupledesc_id_counter ;

__attribute__((used)) static TupleDesc
lookup_rowtype_tupdesc_internal(Oid type_id, int32 typmod, bool noError)
{
 if (type_id != RECORDOID)
 {



  TypeCacheEntry *typentry;

  typentry = lookup_type_cache(type_id, TYPECACHE_TUPDESC);
  if (typentry->tupDesc == ((void*)0) && !noError)
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("type %s is not composite",
       format_type_be(type_id))));
  return typentry->tupDesc;
 }
 else
 {



  if (typmod >= 0)
  {

   if (typmod < RecordCacheArrayLen &&
    RecordCacheArray[typmod] != ((void*)0))
    return RecordCacheArray[typmod];


   if (CurrentSession->shared_typmod_registry != ((void*)0))
   {
    SharedTypmodTableEntry *entry;


    entry = dshash_find(CurrentSession->shared_typmod_table,
         &typmod, 0);
    if (entry != ((void*)0))
    {
     TupleDesc tupdesc;

     tupdesc = (TupleDesc)
      dsa_get_address(CurrentSession->area,
          entry->shared_tupdesc);
     Assert(typmod == tupdesc->tdtypmod);


     ensure_record_cache_typmod_slot_exists(typmod);





     RecordCacheArray[typmod] = tupdesc;
     Assert(tupdesc->tdrefcount == -1);





     RecordIdentifierArray[typmod] = ++tupledesc_id_counter;

     dshash_release_lock(CurrentSession->shared_typmod_table,
          entry);

     return RecordCacheArray[typmod];
    }
   }
  }

  if (!noError)
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("record type has not been registered")));
  return ((void*)0);
 }
}
