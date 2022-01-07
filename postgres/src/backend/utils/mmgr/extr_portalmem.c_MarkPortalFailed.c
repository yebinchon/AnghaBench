
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; int (* cleanup ) (TYPE_1__*) ;} ;
typedef TYPE_1__* Portal ;


 int Assert (int) ;
 scalar_t__ PORTAL_DONE ;
 scalar_t__ PORTAL_FAILED ;
 scalar_t__ PointerIsValid (int (*) (TYPE_1__*)) ;
 int stub1 (TYPE_1__*) ;

void
MarkPortalFailed(Portal portal)
{

 Assert(portal->status != PORTAL_DONE);
 portal->status = PORTAL_FAILED;
 if (PointerIsValid(portal->cleanup))
 {
  portal->cleanup(portal);
  portal->cleanup = ((void*)0);
 }
}
