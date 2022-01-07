
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stmts; int * cplan; } ;
typedef TYPE_1__* Portal ;


 int NIL ;
 int ReleaseCachedPlan (int *,int) ;

__attribute__((used)) static void
PortalReleaseCachedPlan(Portal portal)
{
 if (portal->cplan)
 {
  ReleaseCachedPlan(portal->cplan, 0);
  portal->cplan = ((void*)0);






  portal->stmts = NIL;
 }
}
