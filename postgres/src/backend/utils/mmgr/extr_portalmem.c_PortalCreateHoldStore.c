
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cursorOptions; int * holdStore; int * holdContext; int * holdSnapshot; } ;
typedef TYPE_1__* Portal ;
typedef int * MemoryContext ;


 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int ) ;
 int CURSOR_OPT_SCROLL ;
 int * MemoryContextSwitchTo (int *) ;
 int TopPortalContext ;
 int * tuplestore_begin_heap (int,int,int ) ;
 int work_mem ;

void
PortalCreateHoldStore(Portal portal)
{
 MemoryContext oldcxt;

 Assert(portal->holdContext == ((void*)0));
 Assert(portal->holdStore == ((void*)0));
 Assert(portal->holdSnapshot == ((void*)0));





 portal->holdContext =
  AllocSetContextCreate(TopPortalContext,
         "PortalHoldContext",
         ALLOCSET_DEFAULT_SIZES);







 oldcxt = MemoryContextSwitchTo(portal->holdContext);

 portal->holdStore =
  tuplestore_begin_heap(portal->cursorOptions & CURSOR_OPT_SCROLL,
         1, work_mem);

 MemoryContextSwitchTo(oldcxt);
}
