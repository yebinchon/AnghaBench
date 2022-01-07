
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* conflictTab; } ;
typedef TYPE_1__* LockMethod ;
typedef size_t LOCKMODE ;


 size_t DEFAULT_LOCKMETHOD ;
 int LOCKBIT_ON (size_t) ;
 TYPE_1__** LockMethods ;

bool
DoLockModesConflict(LOCKMODE mode1, LOCKMODE mode2)
{
 LockMethod lockMethodTable = LockMethods[DEFAULT_LOCKMETHOD];

 if (lockMethodTable->conflictTab[mode1] & LOCKBIT_ON(mode2))
  return 1;

 return 0;
}
