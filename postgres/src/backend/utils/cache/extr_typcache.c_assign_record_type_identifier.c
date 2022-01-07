
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef size_t int32 ;
struct TYPE_3__ {scalar_t__ tupDesc_identifier; int * tupDesc; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef scalar_t__ Oid ;


 int Assert (int) ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ RECORDOID ;
 int ** RecordCacheArray ;
 size_t RecordCacheArrayLen ;
 scalar_t__* RecordIdentifierArray ;
 int TYPECACHE_TUPDESC ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (scalar_t__) ;
 TYPE_1__* lookup_type_cache (scalar_t__,int ) ;
 scalar_t__ tupledesc_id_counter ;

uint64
assign_record_type_identifier(Oid type_id, int32 typmod)
{
 if (type_id != RECORDOID)
 {



  TypeCacheEntry *typentry;

  typentry = lookup_type_cache(type_id, TYPECACHE_TUPDESC);
  if (typentry->tupDesc == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("type %s is not composite",
       format_type_be(type_id))));
  Assert(typentry->tupDesc_identifier != 0);
  return typentry->tupDesc_identifier;
 }
 else
 {



  if (typmod >= 0 && typmod < RecordCacheArrayLen &&
   RecordCacheArray[typmod] != ((void*)0))
  {
   Assert(RecordIdentifierArray[typmod] != 0);
   return RecordIdentifierArray[typmod];
  }


  return ++tupledesc_id_counter;
 }
}
