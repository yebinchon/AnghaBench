
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ buffer; int refcount; } ;
typedef TYPE_1__ PrivateRefCountEntry ;
typedef scalar_t__ Buffer ;


 int Assert (int) ;
 int BufferIsLocal (scalar_t__) ;
 int BufferIsValid (scalar_t__) ;
 int HASH_FIND ;
 int HASH_REMOVE ;
 scalar_t__ InvalidBuffer ;
 TYPE_1__* PrivateRefCountArray ;
 int PrivateRefCountHash ;
 scalar_t__ PrivateRefCountOverflowed ;
 int REFCOUNT_ARRAY_ENTRIES ;
 int ReservePrivateRefCountEntry () ;
 TYPE_1__* ReservedRefCountEntry ;
 TYPE_1__* hash_search (int ,void*,int ,int*) ;

__attribute__((used)) static PrivateRefCountEntry *
GetPrivateRefCountEntry(Buffer buffer, bool do_move)
{
 PrivateRefCountEntry *res;
 int i;

 Assert(BufferIsValid(buffer));
 Assert(!BufferIsLocal(buffer));





 for (i = 0; i < REFCOUNT_ARRAY_ENTRIES; i++)
 {
  res = &PrivateRefCountArray[i];

  if (res->buffer == buffer)
   return res;
 }
 if (PrivateRefCountOverflowed == 0)
  return ((void*)0);

 res = hash_search(PrivateRefCountHash,
       (void *) &buffer,
       HASH_FIND,
       ((void*)0));

 if (res == ((void*)0))
  return ((void*)0);
 else if (!do_move)
 {

  return res;
 }
 else
 {

  bool found;
  PrivateRefCountEntry *free;


  ReservePrivateRefCountEntry();


  Assert(ReservedRefCountEntry != ((void*)0));
  free = ReservedRefCountEntry;
  ReservedRefCountEntry = ((void*)0);
  Assert(free->buffer == InvalidBuffer);


  free->buffer = buffer;
  free->refcount = res->refcount;


  hash_search(PrivateRefCountHash,
     (void *) &buffer,
     HASH_REMOVE,
     &found);
  Assert(found);
  Assert(PrivateRefCountOverflowed > 0);
  PrivateRefCountOverflowed--;

  return free;
 }
}
