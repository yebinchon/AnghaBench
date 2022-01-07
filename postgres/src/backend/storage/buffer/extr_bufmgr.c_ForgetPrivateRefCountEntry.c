
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ refcount; int buffer; } ;
typedef TYPE_1__ PrivateRefCountEntry ;
typedef int Buffer ;


 int Assert (int) ;
 int HASH_REMOVE ;
 int InvalidBuffer ;
 TYPE_1__* PrivateRefCountArray ;
 int PrivateRefCountHash ;
 scalar_t__ PrivateRefCountOverflowed ;
 size_t REFCOUNT_ARRAY_ENTRIES ;
 TYPE_1__* ReservedRefCountEntry ;
 int hash_search (int ,void*,int ,int*) ;

__attribute__((used)) static void
ForgetPrivateRefCountEntry(PrivateRefCountEntry *ref)
{
 Assert(ref->refcount == 0);

 if (ref >= &PrivateRefCountArray[0] &&
  ref < &PrivateRefCountArray[REFCOUNT_ARRAY_ENTRIES])
 {
  ref->buffer = InvalidBuffer;






  ReservedRefCountEntry = ref;
 }
 else
 {
  bool found;
  Buffer buffer = ref->buffer;

  hash_search(PrivateRefCountHash,
     (void *) &buffer,
     HASH_REMOVE,
     &found);
  Assert(found);
  Assert(PrivateRefCountOverflowed > 0);
  PrivateRefCountOverflowed--;
 }
}
