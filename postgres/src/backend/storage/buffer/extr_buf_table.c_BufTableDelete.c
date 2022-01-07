
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int BufferTag ;
typedef int BufferLookupEnt ;


 int ERROR ;
 int HASH_REMOVE ;
 int SharedBufHash ;
 int elog (int ,char*) ;
 scalar_t__ hash_search_with_hash_value (int ,void*,int ,int ,int *) ;

void
BufTableDelete(BufferTag *tagPtr, uint32 hashcode)
{
 BufferLookupEnt *result;

 result = (BufferLookupEnt *)
  hash_search_with_hash_value(SharedBufHash,
         (void *) tagPtr,
         hashcode,
         HASH_REMOVE,
         ((void*)0));

 if (!result)
  elog(ERROR, "shared buffer hash table corrupted");
}
