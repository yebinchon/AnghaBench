
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int Var ;
struct TYPE_24__ {scalar_t__ relid; int inh; int * extraUpdatedCols; int * updatedCols; int * insertedCols; int * selectedCols; void* checkAsUser; scalar_t__ requiredPerms; int * tablesample; scalar_t__ rellockmode; scalar_t__ relkind; int security_barrier; TYPE_6__* subquery; int rtekind; } ;
typedef TYPE_1__ TargetEntry ;
struct TYPE_28__ {int resultRelation; scalar_t__ commandType; void* rtable; scalar_t__ jointree; void* targetList; TYPE_1__* returningList; } ;
struct TYPE_27__ {scalar_t__ rd_id; } ;
struct TYPE_26__ {void* actions; int * qual; } ;
struct TYPE_25__ {int waitPolicy; int strength; } ;
typedef TYPE_2__ RowMarkClause ;
typedef TYPE_3__ RewriteRule ;
typedef TYPE_4__* Relation ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_6__ Query ;
typedef int Node ;
typedef int List ;
typedef int Expr ;


 int AcquireRewriteLocks (TYPE_6__*,int,int ) ;
 int Assert (int) ;
 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_INSERT ;
 scalar_t__ CMD_UPDATE ;
 int ChangeVarNodes (int *,int,int,int ) ;
 int ERROR ;
 void* InvalidOid ;
 int PRS2_OLD_VARNO ;
 int RTE_SUBQUERY ;
 int RelationIsSecurityView (TYPE_4__*) ;
 void* copyObject (TYPE_1__*) ;
 int elog (int ,char*,...) ;
 TYPE_6__* fireRIRrules (TYPE_6__*,int *) ;
 TYPE_2__* get_parse_rowmark (TYPE_6__*,int) ;
 void* lappend (void*,TYPE_1__*) ;
 TYPE_1__* linitial (void*) ;
 int list_length (void*) ;
 TYPE_1__* makeTargetEntry (int *,int,int ,int) ;
 int * makeWholeRowVar (TYPE_1__*,int,int ,int) ;
 int markQueryForLocking (TYPE_6__*,int *,int ,int ,int) ;
 int pstrdup (char*) ;
 TYPE_1__* rt_fetch (int,void*) ;

__attribute__((used)) static Query *
ApplyRetrieveRule(Query *parsetree,
      RewriteRule *rule,
      int rt_index,
      Relation relation,
      List *activeRIRs)
{
 Query *rule_action;
 RangeTblEntry *rte,
      *subrte;
 RowMarkClause *rc;

 if (list_length(rule->actions) != 1)
  elog(ERROR, "expected just one rule action");
 if (rule->qual != ((void*)0))
  elog(ERROR, "cannot handle qualified ON SELECT rule");

 if (rt_index == parsetree->resultRelation)
 {
  if (parsetree->commandType == CMD_INSERT)
   return parsetree;
  else if (parsetree->commandType == CMD_UPDATE ||
     parsetree->commandType == CMD_DELETE)
  {
   RangeTblEntry *newrte;
   Var *var;
   TargetEntry *tle;

   rte = rt_fetch(rt_index, parsetree->rtable);
   newrte = copyObject(rte);
   parsetree->rtable = lappend(parsetree->rtable, newrte);
   parsetree->resultRelation = list_length(parsetree->rtable);






   rte->requiredPerms = 0;
   rte->checkAsUser = InvalidOid;
   rte->selectedCols = ((void*)0);
   rte->insertedCols = ((void*)0);
   rte->updatedCols = ((void*)0);
   parsetree->returningList = copyObject(parsetree->returningList);
   ChangeVarNodes((Node *) parsetree->returningList, rt_index,
         parsetree->resultRelation, 0);







   var = makeWholeRowVar(rte, rt_index, 0, 0);
   tle = makeTargetEntry((Expr *) var,
          list_length(parsetree->targetList) + 1,
          pstrdup("wholerow"),
          1);

   parsetree->targetList = lappend(parsetree->targetList, tle);


  }
  else
   elog(ERROR, "unrecognized commandType: %d",
     (int) parsetree->commandType);
 }
 rc = get_parse_rowmark(parsetree, rt_index);






 rule_action = copyObject(linitial(rule->actions));

 AcquireRewriteLocks(rule_action, 1, (rc != ((void*)0)));






 if (rc != ((void*)0))
  markQueryForLocking(rule_action, (Node *) rule_action->jointree,
       rc->strength, rc->waitPolicy, 1);
 rule_action = fireRIRrules(rule_action, activeRIRs);





 rte = rt_fetch(rt_index, parsetree->rtable);

 rte->rtekind = RTE_SUBQUERY;
 rte->subquery = rule_action;
 rte->security_barrier = RelationIsSecurityView(relation);

 rte->relid = InvalidOid;
 rte->relkind = 0;
 rte->rellockmode = 0;
 rte->tablesample = ((void*)0);
 rte->inh = 0;





 subrte = rt_fetch(PRS2_OLD_VARNO, rule_action->rtable);
 Assert(subrte->relid == relation->rd_id);
 subrte->requiredPerms = rte->requiredPerms;
 subrte->checkAsUser = rte->checkAsUser;
 subrte->selectedCols = rte->selectedCols;
 subrte->insertedCols = rte->insertedCols;
 subrte->updatedCols = rte->updatedCols;
 subrte->extraUpdatedCols = rte->extraUpdatedCols;

 rte->requiredPerms = 0;
 rte->checkAsUser = InvalidOid;
 rte->selectedCols = ((void*)0);
 rte->insertedCols = ((void*)0);
 rte->updatedCols = ((void*)0);
 rte->extraUpdatedCols = ((void*)0);

 return parsetree;
}
