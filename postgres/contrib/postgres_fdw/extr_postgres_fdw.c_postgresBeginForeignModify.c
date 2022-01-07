
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int state; } ;
struct TYPE_11__ {TYPE_2__** mt_plans; int operation; TYPE_1__ ps; } ;
struct TYPE_10__ {int * ri_FdwState; int ri_RangeTableIndex; } ;
struct TYPE_9__ {int plan; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef int RangeTblEntry ;
typedef int PgFdwModifyState ;
typedef TYPE_4__ ModifyTableState ;
typedef int List ;


 int EXEC_FLAG_EXPLAIN_ONLY ;
 int FdwModifyPrivateHasReturning ;
 int FdwModifyPrivateRetrievedAttrs ;
 int FdwModifyPrivateTargetAttnums ;
 int FdwModifyPrivateUpdateSql ;
 int * create_foreign_modify (int ,int *,TYPE_3__*,int ,int ,char*,int *,int,int *) ;
 int * exec_rt_fetch (int ,int ) ;
 int intVal (scalar_t__) ;
 scalar_t__ list_nth (int *,int ) ;
 char* strVal (scalar_t__) ;

__attribute__((used)) static void
postgresBeginForeignModify(ModifyTableState *mtstate,
         ResultRelInfo *resultRelInfo,
         List *fdw_private,
         int subplan_index,
         int eflags)
{
 PgFdwModifyState *fmstate;
 char *query;
 List *target_attrs;
 bool has_returning;
 List *retrieved_attrs;
 RangeTblEntry *rte;





 if (eflags & EXEC_FLAG_EXPLAIN_ONLY)
  return;


 query = strVal(list_nth(fdw_private,
       FdwModifyPrivateUpdateSql));
 target_attrs = (List *) list_nth(fdw_private,
          FdwModifyPrivateTargetAttnums);
 has_returning = intVal(list_nth(fdw_private,
         FdwModifyPrivateHasReturning));
 retrieved_attrs = (List *) list_nth(fdw_private,
          FdwModifyPrivateRetrievedAttrs);


 rte = exec_rt_fetch(resultRelInfo->ri_RangeTableIndex,
      mtstate->ps.state);


 fmstate = create_foreign_modify(mtstate->ps.state,
         rte,
         resultRelInfo,
         mtstate->operation,
         mtstate->mt_plans[subplan_index]->plan,
         query,
         target_attrs,
         has_returning,
         retrieved_attrs);

 resultRelInfo->ri_FdwState = fmstate;
}
