
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nextMXact; } ;
typedef scalar_t__ MultiXactId ;


 scalar_t__ FirstMultiXactId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MultiXactGenLock ;
 TYPE_1__* MultiXactState ;

MultiXactId
ReadNextMultiXactId(void)
{
 MultiXactId mxid;


 LWLockAcquire(MultiXactGenLock, LW_SHARED);
 mxid = MultiXactState->nextMXact;
 LWLockRelease(MultiXactGenLock);

 if (mxid < FirstMultiXactId)
  mxid = FirstMultiXactId;

 return mxid;
}
