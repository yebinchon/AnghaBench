
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int Var ;
typedef int TargetEntry ;
struct TYPE_16__ {int (* AddForeignUpdateTargets ) (TYPE_4__*,int *,TYPE_3__*) ;} ;
struct TYPE_15__ {scalar_t__ commandType; int targetList; int resultRelation; } ;
struct TYPE_14__ {TYPE_2__* trigdesc; TYPE_1__* rd_rel; } ;
struct TYPE_13__ {scalar_t__ trig_delete_before_row; scalar_t__ trig_delete_after_row; scalar_t__ trig_update_before_row; scalar_t__ trig_update_after_row; } ;
struct TYPE_12__ {scalar_t__ relkind; } ;
typedef TYPE_3__* Relation ;
typedef int RangeTblEntry ;
typedef TYPE_4__ Query ;
typedef TYPE_5__ FdwRoutine ;
typedef int Expr ;


 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_UPDATE ;
 TYPE_5__* GetFdwRoutineForRelation (TYPE_3__*,int) ;
 int InvalidOid ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 int SelfItemPointerAttributeNumber ;
 int TIDOID ;
 int lappend (int ,int *) ;
 scalar_t__ list_length (int ) ;
 int * makeTargetEntry (int *,scalar_t__,int ,int) ;
 int * makeVar (int ,int ,int ,int,int ,int ) ;
 int * makeWholeRowVar (int *,int ,int ,int) ;
 int pstrdup (char const*) ;
 int stub1 (TYPE_4__*,int *,TYPE_3__*) ;

void
rewriteTargetListUD(Query *parsetree, RangeTblEntry *target_rte,
     Relation target_relation)
{
 Var *var = ((void*)0);
 const char *attrname;
 TargetEntry *tle;

 if (target_relation->rd_rel->relkind == RELKIND_RELATION ||
  target_relation->rd_rel->relkind == RELKIND_MATVIEW ||
  target_relation->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
 {



  var = makeVar(parsetree->resultRelation,
       SelfItemPointerAttributeNumber,
       TIDOID,
       -1,
       InvalidOid,
       0);

  attrname = "ctid";
 }
 else if (target_relation->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
 {



  FdwRoutine *fdwroutine;

  fdwroutine = GetFdwRoutineForRelation(target_relation, 0);

  if (fdwroutine->AddForeignUpdateTargets != ((void*)0))
   fdwroutine->AddForeignUpdateTargets(parsetree, target_rte,
            target_relation);






  if (target_relation->trigdesc &&
   ((parsetree->commandType == CMD_UPDATE &&
     (target_relation->trigdesc->trig_update_after_row ||
      target_relation->trigdesc->trig_update_before_row)) ||
    (parsetree->commandType == CMD_DELETE &&
     (target_relation->trigdesc->trig_delete_after_row ||
      target_relation->trigdesc->trig_delete_before_row))))
  {
   var = makeWholeRowVar(target_rte,
          parsetree->resultRelation,
          0,
          0);

   attrname = "wholerow";
  }
 }

 if (var != ((void*)0))
 {
  tle = makeTargetEntry((Expr *) var,
         list_length(parsetree->targetList) + 1,
         pstrdup(attrname),
         1);

  parsetree->targetList = lappend(parsetree->targetList, tle);
 }
}
