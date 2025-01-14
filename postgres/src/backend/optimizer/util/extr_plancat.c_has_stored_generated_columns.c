
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_8__ {int relid; } ;
struct TYPE_7__ {TYPE_1__* constr; } ;
struct TYPE_6__ {scalar_t__ has_generated_stored; } ;
typedef int Relation ;
typedef TYPE_3__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef int Index ;


 int NoLock ;
 TYPE_2__* RelationGetDescr (int ) ;
 TYPE_3__* planner_rt_fetch (int ,int *) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

bool
has_stored_generated_columns(PlannerInfo *root, Index rti)
{
 RangeTblEntry *rte = planner_rt_fetch(rti, root);
 Relation relation;
 TupleDesc tupdesc;
 bool result = 0;


 relation = table_open(rte->relid, NoLock);

 tupdesc = RelationGetDescr(relation);
 result = tupdesc->constr && tupdesc->constr->has_generated_stored;

 table_close(relation, NoLock);

 return result;
}
