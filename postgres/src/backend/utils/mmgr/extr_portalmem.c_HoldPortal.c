
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* activeSubid; void* createSubid; int * resowner; } ;
typedef TYPE_1__* Portal ;


 void* InvalidSubTransactionId ;
 int PersistHoldablePortal (TYPE_1__*) ;
 int PortalCreateHoldStore (TYPE_1__*) ;
 int PortalReleaseCachedPlan (TYPE_1__*) ;

__attribute__((used)) static void
HoldPortal(Portal portal)
{




 PortalCreateHoldStore(portal);
 PersistHoldablePortal(portal);


 PortalReleaseCachedPlan(portal);






 portal->resowner = ((void*)0);





 portal->createSubid = InvalidSubTransactionId;
 portal->activeSubid = InvalidSubTransactionId;
}
