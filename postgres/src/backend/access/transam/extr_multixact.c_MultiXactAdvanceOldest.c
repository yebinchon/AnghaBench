
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oldestMultiXactId; } ;
typedef int Oid ;
typedef int MultiXactId ;


 int Assert (int ) ;
 int InRecovery ;
 scalar_t__ MultiXactIdPrecedes (int ,int ) ;
 TYPE_1__* MultiXactState ;
 int SetMultiXactIdLimit (int ,int ,int) ;

void
MultiXactAdvanceOldest(MultiXactId oldestMulti, Oid oldestMultiDB)
{
 Assert(InRecovery);

 if (MultiXactIdPrecedes(MultiXactState->oldestMultiXactId, oldestMulti))
  SetMultiXactIdLimit(oldestMulti, oldestMultiDB, 0);
}
