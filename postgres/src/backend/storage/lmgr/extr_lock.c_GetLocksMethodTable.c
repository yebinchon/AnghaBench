
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LockMethod ;
typedef size_t LOCKMETHODID ;
typedef int LOCK ;


 int Assert (int) ;
 size_t LOCK_LOCKMETHOD (int const) ;
 int * LockMethods ;
 size_t lengthof (int *) ;

LockMethod
GetLocksMethodTable(const LOCK *lock)
{
 LOCKMETHODID lockmethodid = LOCK_LOCKMETHOD(*lock);

 Assert(0 < lockmethodid && lockmethodid < lengthof(LockMethods));
 return LockMethods[lockmethodid];
}
