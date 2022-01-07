
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int portalPinned; } ;
typedef TYPE_1__* Portal ;


 int ERROR ;
 int elog (int ,char*) ;

void
PinPortal(Portal portal)
{
 if (portal->portalPinned)
  elog(ERROR, "portal already pinned");

 portal->portalPinned = 1;
}
