
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* aux_fmstate; } ;
struct TYPE_5__ {scalar_t__ ri_FdwState; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef TYPE_2__ PgFdwModifyState ;
typedef int EState ;


 int Assert (int ) ;
 int finish_foreign_modify (TYPE_2__*) ;

__attribute__((used)) static void
postgresEndForeignInsert(EState *estate,
       ResultRelInfo *resultRelInfo)
{
 PgFdwModifyState *fmstate = (PgFdwModifyState *) resultRelInfo->ri_FdwState;

 Assert(fmstate != ((void*)0));





 if (fmstate->aux_fmstate)
  fmstate = fmstate->aux_fmstate;


 finish_foreign_modify(fmstate);
}
