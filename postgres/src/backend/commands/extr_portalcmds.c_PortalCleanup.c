
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cleanup; scalar_t__ status; scalar_t__ resowner; int * queryDesc; } ;
typedef scalar_t__ ResourceOwner ;
typedef int QueryDesc ;
typedef TYPE_1__* Portal ;


 int AssertArg (int) ;
 scalar_t__ CurrentResourceOwner ;
 int ExecutorEnd (int *) ;
 int ExecutorFinish (int *) ;
 int FreeQueryDesc (int *) ;
 scalar_t__ PORTAL_FAILED ;
 int PortalIsValid (TYPE_1__*) ;

void
PortalCleanup(Portal portal)
{
 QueryDesc *queryDesc;




 AssertArg(PortalIsValid(portal));
 AssertArg(portal->cleanup == PortalCleanup);






 queryDesc = portal->queryDesc;
 if (queryDesc)
 {






  portal->queryDesc = ((void*)0);

  if (portal->status != PORTAL_FAILED)
  {
   ResourceOwner saveResourceOwner;


   saveResourceOwner = CurrentResourceOwner;
   if (portal->resowner)
    CurrentResourceOwner = portal->resowner;

   ExecutorFinish(queryDesc);
   ExecutorEnd(queryDesc);
   FreeQueryDesc(queryDesc);

   CurrentResourceOwner = saveResourceOwner;
  }
 }
}
