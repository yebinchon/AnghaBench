
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int int32 ;
typedef int TupleDesc ;


 int CacheMemoryContext ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int * RecordCacheArray ;
 int RecordCacheArrayLen ;
 int * RecordIdentifierArray ;
 int memset (int *,int ,int) ;
 scalar_t__ repalloc (int *,int) ;

__attribute__((used)) static void
ensure_record_cache_typmod_slot_exists(int32 typmod)
{
 if (RecordCacheArray == ((void*)0))
 {
  RecordCacheArray = (TupleDesc *)
   MemoryContextAllocZero(CacheMemoryContext, 64 * sizeof(TupleDesc));
  RecordIdentifierArray = (uint64 *)
   MemoryContextAllocZero(CacheMemoryContext, 64 * sizeof(uint64));
  RecordCacheArrayLen = 64;
 }

 if (typmod >= RecordCacheArrayLen)
 {
  int32 newlen = RecordCacheArrayLen * 2;

  while (typmod >= newlen)
   newlen *= 2;

  RecordCacheArray = (TupleDesc *) repalloc(RecordCacheArray,
              newlen * sizeof(TupleDesc));
  memset(RecordCacheArray + RecordCacheArrayLen, 0,
      (newlen - RecordCacheArrayLen) * sizeof(TupleDesc));
  RecordIdentifierArray = (uint64 *) repalloc(RecordIdentifierArray,
             newlen * sizeof(uint64));
  memset(RecordIdentifierArray + RecordCacheArrayLen, 0,
      (newlen - RecordCacheArrayLen) * sizeof(uint64));
  RecordCacheArrayLen = newlen;
 }
}
