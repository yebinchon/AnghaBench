
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int id; } ;
struct TYPE_4__ {scalar_t__ blockNum; } ;
typedef TYPE_1__ BufferTag ;
typedef TYPE_2__ BufferLookupEnt ;


 int Assert (int) ;
 int HASH_ENTER ;
 scalar_t__ P_NEW ;
 int SharedBufHash ;
 scalar_t__ hash_search_with_hash_value (int ,void*,int ,int ,int*) ;

int
BufTableInsert(BufferTag *tagPtr, uint32 hashcode, int buf_id)
{
 BufferLookupEnt *result;
 bool found;

 Assert(buf_id >= 0);
 Assert(tagPtr->blockNum != P_NEW);

 result = (BufferLookupEnt *)
  hash_search_with_hash_value(SharedBufHash,
         (void *) tagPtr,
         hashcode,
         HASH_ENTER,
         &found);

 if (found)
  return result->id;

 result->id = buf_id;

 return -1;
}
