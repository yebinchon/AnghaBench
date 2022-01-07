
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {TYPE_1__* myTarget; } ;
struct TYPE_4__ {int tag; } ;
typedef int Size ;
typedef TYPE_2__ PREDICATELOCKTAG ;


 int Assert (int) ;
 int PredicateLockHashCodeFromTargetHashCode (TYPE_2__ const*,int ) ;
 int PredicateLockTargetTagHashCode (int *) ;

__attribute__((used)) static uint32
predicatelock_hash(const void *key, Size keysize)
{
 const PREDICATELOCKTAG *predicatelocktag = (const PREDICATELOCKTAG *) key;
 uint32 targethash;

 Assert(keysize == sizeof(PREDICATELOCKTAG));


 targethash = PredicateLockTargetTagHashCode(&predicatelocktag->myTarget->tag);

 return PredicateLockHashCodeFromTargetHashCode(predicatelocktag, targethash);
}
