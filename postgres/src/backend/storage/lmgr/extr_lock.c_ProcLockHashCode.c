
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int myProc; } ;
typedef TYPE_1__ PROCLOCKTAG ;
typedef scalar_t__ Datum ;


 int LOG2_NUM_LOCK_PARTITIONS ;
 scalar_t__ PointerGetDatum (int ) ;

__attribute__((used)) static inline uint32
ProcLockHashCode(const PROCLOCKTAG *proclocktag, uint32 hashcode)
{
 uint32 lockhash = hashcode;
 Datum procptr;




 procptr = PointerGetDatum(proclocktag->myProc);
 lockhash ^= ((uint32) procptr) << LOG2_NUM_LOCK_PARTITIONS;

 return lockhash;
}
