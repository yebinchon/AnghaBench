
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_32__ {int attisdropped; } ;
struct TYPE_31__ {int operation; scalar_t__ onConflictAction; scalar_t__ returningLists; scalar_t__ withCheckOptionLists; } ;
struct TYPE_30__ {int extraUpdatedCols; int updatedCols; int relid; } ;
struct TYPE_29__ {TYPE_1__* trigdesc; } ;
struct TYPE_28__ {int data; } ;
struct TYPE_27__ {int natts; } ;
struct TYPE_26__ {scalar_t__ trig_update_before_row; } ;
typedef TYPE_3__ StringInfoData ;
typedef TYPE_4__* Relation ;
typedef TYPE_5__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef TYPE_6__ ModifyTable ;
typedef int List ;
typedef int Index ;
typedef TYPE_7__* Form_pg_attribute ;
typedef int CmdType ;
typedef int Bitmapset ;
typedef int AttrNumber ;





 int ERROR ;
 int FirstLowInvalidHeapAttributeNumber ;
 int InvalidAttrNumber ;
 int * NIL ;
 int NoLock ;
 scalar_t__ ONCONFLICT_NONE ;
 scalar_t__ ONCONFLICT_NOTHING ;
 TYPE_2__* RelationGetDescr (TYPE_4__*) ;
 TYPE_7__* TupleDescAttr (TYPE_2__*,int) ;
 int bms_next_member (int *,int) ;
 int * bms_union (int ,int ) ;
 int deparseDeleteSql (TYPE_3__*,TYPE_5__*,int ,TYPE_4__*,int *,int **) ;
 int deparseInsertSql (TYPE_3__*,TYPE_5__*,int ,TYPE_4__*,int *,int,int *,int *,int **) ;
 int deparseUpdateSql (TYPE_3__*,TYPE_5__*,int ,TYPE_4__*,int *,int *,int *,int **) ;
 int elog (int ,char*,...) ;
 int initStringInfo (TYPE_3__*) ;
 int * lappend_int (int *,int) ;
 int * list_make4 (int ,int *,int ,int *) ;
 scalar_t__ list_nth (scalar_t__,int) ;
 int makeInteger (int) ;
 int makeString (int ) ;
 TYPE_5__* planner_rt_fetch (int ,int *) ;
 int table_close (TYPE_4__*,int ) ;
 TYPE_4__* table_open (int ,int ) ;

__attribute__((used)) static List *
postgresPlanForeignModify(PlannerInfo *root,
        ModifyTable *plan,
        Index resultRelation,
        int subplan_index)
{
 CmdType operation = plan->operation;
 RangeTblEntry *rte = planner_rt_fetch(resultRelation, root);
 Relation rel;
 StringInfoData sql;
 List *targetAttrs = NIL;
 List *withCheckOptionList = NIL;
 List *returningList = NIL;
 List *retrieved_attrs = NIL;
 bool doNothing = 0;

 initStringInfo(&sql);





 rel = table_open(rte->relid, NoLock);
 if (operation == 129 ||
  (operation == 128 &&
   rel->trigdesc &&
   rel->trigdesc->trig_update_before_row))
 {
  TupleDesc tupdesc = RelationGetDescr(rel);
  int attnum;

  for (attnum = 1; attnum <= tupdesc->natts; attnum++)
  {
   Form_pg_attribute attr = TupleDescAttr(tupdesc, attnum - 1);

   if (!attr->attisdropped)
    targetAttrs = lappend_int(targetAttrs, attnum);
  }
 }
 else if (operation == 128)
 {
  int col;
  Bitmapset *allUpdatedCols = bms_union(rte->updatedCols, rte->extraUpdatedCols);

  col = -1;
  while ((col = bms_next_member(allUpdatedCols, col)) >= 0)
  {

   AttrNumber attno = col + FirstLowInvalidHeapAttributeNumber;

   if (attno <= InvalidAttrNumber)
    elog(ERROR, "system-column update is not supported");
   targetAttrs = lappend_int(targetAttrs, attno);
  }
 }




 if (plan->withCheckOptionLists)
  withCheckOptionList = (List *) list_nth(plan->withCheckOptionLists,
            subplan_index);




 if (plan->returningLists)
  returningList = (List *) list_nth(plan->returningLists, subplan_index);







 if (plan->onConflictAction == ONCONFLICT_NOTHING)
  doNothing = 1;
 else if (plan->onConflictAction != ONCONFLICT_NONE)
  elog(ERROR, "unexpected ON CONFLICT specification: %d",
    (int) plan->onConflictAction);




 switch (operation)
 {
  case 129:
   deparseInsertSql(&sql, rte, resultRelation, rel,
        targetAttrs, doNothing,
        withCheckOptionList, returningList,
        &retrieved_attrs);
   break;
  case 128:
   deparseUpdateSql(&sql, rte, resultRelation, rel,
        targetAttrs,
        withCheckOptionList, returningList,
        &retrieved_attrs);
   break;
  case 130:
   deparseDeleteSql(&sql, rte, resultRelation, rel,
        returningList,
        &retrieved_attrs);
   break;
  default:
   elog(ERROR, "unexpected operation: %d", (int) operation);
   break;
 }

 table_close(rel, NoLock);





 return list_make4(makeString(sql.data),
       targetAttrs,
       makeInteger((retrieved_attrs != NIL)),
       retrieved_attrs);
}
