
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_25__ {scalar_t__ trig_delete_instead_row; scalar_t__ trig_update_instead_row; scalar_t__ trig_insert_instead_row; } ;
typedef TYPE_4__ TriggerDesc ;
struct TYPE_30__ {int targetList; int rtable; TYPE_3__* jointree; } ;
struct TYPE_29__ {scalar_t__ rtekind; scalar_t__ relkind; int relid; } ;
struct TYPE_28__ {int rtindex; } ;
struct TYPE_27__ {TYPE_2__* rd_rel; TYPE_4__* trigdesc; TYPE_5__* rd_rules; } ;
struct TYPE_26__ {int numLocks; TYPE_1__** rules; } ;
struct TYPE_24__ {int fromlist; } ;
struct TYPE_23__ {scalar_t__ relkind; } ;
struct TYPE_22__ {int event; int * qual; scalar_t__ isInstead; } ;
struct TYPE_21__ {int (* IsForeignRelUpdatable ) (TYPE_6__*) ;int * ExecForeignDelete; int * ExecForeignUpdate; int * ExecForeignInsert; } ;
typedef TYPE_5__ RuleLock ;
typedef TYPE_6__* Relation ;
typedef TYPE_7__ RangeTblRef ;
typedef TYPE_8__ RangeTblEntry ;
typedef TYPE_9__ Query ;
typedef int Oid ;
typedef TYPE_10__ FdwRoutine ;
typedef int Bitmapset ;


 int ALL_EVENTS ;
 int AccessShareLock ;
 int Assert (int) ;
 int CMD_DELETE ;
 int CMD_INSERT ;
 int CMD_UPDATE ;
 TYPE_10__* GetFdwRoutineForRelation (TYPE_6__*,int) ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELKIND_VIEW ;
 scalar_t__ RTE_RELATION ;
 int * adjust_view_column_set (int *,int ) ;
 int * bms_int_members (int *,int *) ;
 scalar_t__ bms_is_empty (int *) ;
 TYPE_9__* get_view_query (TYPE_6__*) ;
 scalar_t__ linitial (int ) ;
 int relation_close (TYPE_6__*,int ) ;
 TYPE_8__* rt_fetch (int ,int ) ;
 int stub1 (TYPE_6__*) ;
 TYPE_6__* try_relation_open (int ,int ) ;
 int view_cols_are_auto_updatable (TYPE_9__*,int *,int **,int *) ;
 int * view_query_is_auto_updatable (TYPE_9__*,int) ;

int
relation_is_updatable(Oid reloid,
       bool include_triggers,
       Bitmapset *include_cols)
{
 int events = 0;
 Relation rel;
 RuleLock *rulelocks;



 rel = try_relation_open(reloid, AccessShareLock);







 if (rel == ((void*)0))
  return 0;


 if (rel->rd_rel->relkind == RELKIND_RELATION ||
  rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
 {
  relation_close(rel, AccessShareLock);
  return ((1 << CMD_INSERT) | (1 << CMD_UPDATE) | (1 << CMD_DELETE));
 }


 rulelocks = rel->rd_rules;
 if (rulelocks != ((void*)0))
 {
  int i;

  for (i = 0; i < rulelocks->numLocks; i++)
  {
   if (rulelocks->rules[i]->isInstead &&
    rulelocks->rules[i]->qual == ((void*)0))
   {
    events |= ((1 << rulelocks->rules[i]->event) & ((1 << CMD_INSERT) | (1 << CMD_UPDATE) | (1 << CMD_DELETE)));
   }
  }


  if (events == ((1 << CMD_INSERT) | (1 << CMD_UPDATE) | (1 << CMD_DELETE)))
  {
   relation_close(rel, AccessShareLock);
   return events;
  }
 }


 if (include_triggers)
 {
  TriggerDesc *trigDesc = rel->trigdesc;

  if (trigDesc)
  {
   if (trigDesc->trig_insert_instead_row)
    events |= (1 << CMD_INSERT);
   if (trigDesc->trig_update_instead_row)
    events |= (1 << CMD_UPDATE);
   if (trigDesc->trig_delete_instead_row)
    events |= (1 << CMD_DELETE);


   if (events == ((1 << CMD_INSERT) | (1 << CMD_UPDATE) | (1 << CMD_DELETE)))
   {
    relation_close(rel, AccessShareLock);
    return events;
   }
  }
 }


 if (rel->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
 {
  FdwRoutine *fdwroutine = GetFdwRoutineForRelation(rel, 0);

  if (fdwroutine->IsForeignRelUpdatable != ((void*)0))
   events |= fdwroutine->IsForeignRelUpdatable(rel);
  else
  {

   if (fdwroutine->ExecForeignInsert != ((void*)0))
    events |= (1 << CMD_INSERT);
   if (fdwroutine->ExecForeignUpdate != ((void*)0))
    events |= (1 << CMD_UPDATE);
   if (fdwroutine->ExecForeignDelete != ((void*)0))
    events |= (1 << CMD_DELETE);
  }

  relation_close(rel, AccessShareLock);
  return events;
 }


 if (rel->rd_rel->relkind == RELKIND_VIEW)
 {
  Query *viewquery = get_view_query(rel);

  if (view_query_is_auto_updatable(viewquery, 0) == ((void*)0))
  {
   Bitmapset *updatable_cols;
   int auto_events;
   RangeTblRef *rtr;
   RangeTblEntry *base_rte;
   Oid baseoid;







   view_cols_are_auto_updatable(viewquery, ((void*)0),
           &updatable_cols, ((void*)0));

   if (include_cols != ((void*)0))
    updatable_cols = bms_int_members(updatable_cols, include_cols);

   if (bms_is_empty(updatable_cols))
    auto_events = (1 << CMD_DELETE);
   else
    auto_events = ((1 << CMD_INSERT) | (1 << CMD_UPDATE) | (1 << CMD_DELETE));







   rtr = (RangeTblRef *) linitial(viewquery->jointree->fromlist);
   base_rte = rt_fetch(rtr->rtindex, viewquery->rtable);
   Assert(base_rte->rtekind == RTE_RELATION);

   if (base_rte->relkind != RELKIND_RELATION &&
    base_rte->relkind != RELKIND_PARTITIONED_TABLE)
   {
    baseoid = base_rte->relid;
    include_cols = adjust_view_column_set(updatable_cols,
               viewquery->targetList);
    auto_events &= relation_is_updatable(baseoid,
              include_triggers,
              include_cols);
   }
   events |= auto_events;
  }
 }


 relation_close(rel, AccessShareLock);
 return events;
}
