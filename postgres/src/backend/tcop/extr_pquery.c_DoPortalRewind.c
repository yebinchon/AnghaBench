
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int atStart; int atEnd; scalar_t__ portalPos; TYPE_1__* queryDesc; scalar_t__ holdStore; int holdContext; } ;
struct TYPE_5__ {int snapshot; } ;
typedef TYPE_1__ QueryDesc ;
typedef TYPE_2__* Portal ;
typedef int MemoryContext ;


 int ExecutorRewind (TYPE_1__*) ;
 int MemoryContextSwitchTo (int ) ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 int tuplestore_rescan (scalar_t__) ;

__attribute__((used)) static void
DoPortalRewind(Portal portal)
{
 QueryDesc *queryDesc;


 if (portal->holdStore)
 {
  MemoryContext oldcontext;

  oldcontext = MemoryContextSwitchTo(portal->holdContext);
  tuplestore_rescan(portal->holdStore);
  MemoryContextSwitchTo(oldcontext);
 }


 queryDesc = portal->queryDesc;
 if (queryDesc)
 {
  PushActiveSnapshot(queryDesc->snapshot);
  ExecutorRewind(queryDesc);
  PopActiveSnapshot();
 }

 portal->atStart = 1;
 portal->atEnd = 0;
 portal->portalPos = 0;
}
