
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int id; } ;
typedef int BufferTag ;
typedef TYPE_1__ BufferLookupEnt ;


 int HASH_FIND ;
 int SharedBufHash ;
 scalar_t__ hash_search_with_hash_value (int ,void*,int ,int ,int *) ;

int
BufTableLookup(BufferTag *tagPtr, uint32 hashcode)
{
 BufferLookupEnt *result;

 result = (BufferLookupEnt *)
  hash_search_with_hash_value(SharedBufHash,
         (void *) tagPtr,
         hashcode,
         HASH_FIND,
         ((void*)0));

 if (!result)
  return -1;

 return result->id;
}
