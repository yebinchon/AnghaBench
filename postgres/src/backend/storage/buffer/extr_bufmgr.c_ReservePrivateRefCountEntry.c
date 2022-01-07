
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ buffer; scalar_t__ refcount; } ;
typedef TYPE_1__ PrivateRefCountEntry ;


 int Assert (int) ;
 int HASH_ENTER ;
 scalar_t__ InvalidBuffer ;
 TYPE_1__* PrivateRefCountArray ;
 int PrivateRefCountClock ;
 int PrivateRefCountHash ;
 int PrivateRefCountOverflowed ;
 int REFCOUNT_ARRAY_ENTRIES ;
 TYPE_1__* ReservedRefCountEntry ;
 TYPE_1__* hash_search (int ,void*,int ,int*) ;

__attribute__((used)) static void
ReservePrivateRefCountEntry(void)
{

 if (ReservedRefCountEntry != ((void*)0))
  return;





 {
  int i;

  for (i = 0; i < REFCOUNT_ARRAY_ENTRIES; i++)
  {
   PrivateRefCountEntry *res;

   res = &PrivateRefCountArray[i];

   if (res->buffer == InvalidBuffer)
   {
    ReservedRefCountEntry = res;
    return;
   }
  }
 }





 {




  PrivateRefCountEntry *hashent;
  bool found;


  ReservedRefCountEntry =
   &PrivateRefCountArray[PrivateRefCountClock++ % REFCOUNT_ARRAY_ENTRIES];


  Assert(ReservedRefCountEntry->buffer != InvalidBuffer);


  hashent = hash_search(PrivateRefCountHash,
         (void *) &(ReservedRefCountEntry->buffer),
         HASH_ENTER,
         &found);
  Assert(!found);
  hashent->refcount = ReservedRefCountEntry->refcount;


  ReservedRefCountEntry->buffer = InvalidBuffer;
  ReservedRefCountEntry->refcount = 0;

  PrivateRefCountOverflowed++;
 }
}
