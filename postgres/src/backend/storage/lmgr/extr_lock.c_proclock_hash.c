
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int myProc; TYPE_1__* myLock; } ;
struct TYPE_3__ {int tag; } ;
typedef int Size ;
typedef TYPE_2__ PROCLOCKTAG ;
typedef scalar_t__ Datum ;


 int Assert (int) ;
 int LOG2_NUM_LOCK_PARTITIONS ;
 int LockTagHashCode (int *) ;
 scalar_t__ PointerGetDatum (int ) ;

__attribute__((used)) static uint32
proclock_hash(const void *key, Size keysize)
{
 const PROCLOCKTAG *proclocktag = (const PROCLOCKTAG *) key;
 uint32 lockhash;
 Datum procptr;

 Assert(keysize == sizeof(PROCLOCKTAG));


 lockhash = LockTagHashCode(&proclocktag->myLock->tag);
 procptr = PointerGetDatum(proclocktag->myProc);
 lockhash ^= ((uint32) procptr) << LOG2_NUM_LOCK_PARTITIONS;

 return lockhash;
}
