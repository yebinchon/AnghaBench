
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int locktag_lockmethodid; } ;
typedef int LockMethod ;
typedef TYPE_1__ LOCKTAG ;
typedef size_t LOCKMETHODID ;


 int Assert (int) ;
 int * LockMethods ;
 size_t lengthof (int *) ;

LockMethod
GetLockTagsMethodTable(const LOCKTAG *locktag)
{
 LOCKMETHODID lockmethodid = (LOCKMETHODID) locktag->locktag_lockmethodid;

 Assert(0 < lockmethodid && lockmethodid < lengthof(LockMethods));
 return LockMethods[lockmethodid];
}
