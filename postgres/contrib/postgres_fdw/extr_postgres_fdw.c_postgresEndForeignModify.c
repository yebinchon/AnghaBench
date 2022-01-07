
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ri_FdwState; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef int PgFdwModifyState ;
typedef int EState ;


 int finish_foreign_modify (int *) ;

__attribute__((used)) static void
postgresEndForeignModify(EState *estate,
       ResultRelInfo *resultRelInfo)
{
 PgFdwModifyState *fmstate = (PgFdwModifyState *) resultRelInfo->ri_FdwState;


 if (fmstate == ((void*)0))
  return;


 finish_foreign_modify(fmstate);
}
