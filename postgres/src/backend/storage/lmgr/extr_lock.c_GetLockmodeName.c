
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t numLockModes; char const** lockModeNames; } ;
typedef size_t LOCKMODE ;
typedef size_t LOCKMETHODID ;


 int Assert (int) ;
 TYPE_1__** LockMethods ;
 size_t lengthof (TYPE_1__**) ;

const char *
GetLockmodeName(LOCKMETHODID lockmethodid, LOCKMODE mode)
{
 Assert(lockmethodid > 0 && lockmethodid < lengthof(LockMethods));
 Assert(mode > 0 && mode <= LockMethods[lockmethodid]->numLockModes);
 return LockMethods[lockmethodid]->lockModeNames[mode];
}
