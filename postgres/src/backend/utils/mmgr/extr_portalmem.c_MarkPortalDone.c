
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; int (* cleanup ) (TYPE_1__*) ;} ;
typedef TYPE_1__* Portal ;


 int Assert (int) ;
 scalar_t__ PORTAL_ACTIVE ;
 scalar_t__ PORTAL_DONE ;
 scalar_t__ PointerIsValid (int (*) (TYPE_1__*)) ;
 int stub1 (TYPE_1__*) ;

void
MarkPortalDone(Portal portal)
{

 Assert(portal->status == PORTAL_ACTIVE);
 portal->status = PORTAL_DONE;
 if (PointerIsValid(portal->cleanup))
 {
  portal->cleanup(portal);
  portal->cleanup = ((void*)0);
 }
}
