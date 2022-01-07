
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* trigdesc; } ;
struct TYPE_6__ {scalar_t__ trig_delete_after_row; } ;
typedef int StringInfo ;
typedef TYPE_2__* Relation ;
typedef int RangeTblEntry ;
typedef int List ;
typedef int Index ;


 int NIL ;
 int appendStringInfoString (int ,char*) ;
 int deparseRelation (int ,TYPE_2__*) ;
 int deparseReturningList (int ,int *,int ,TYPE_2__*,int,int ,int *,int **) ;

void
deparseDeleteSql(StringInfo buf, RangeTblEntry *rte,
     Index rtindex, Relation rel,
     List *returningList,
     List **retrieved_attrs)
{
 appendStringInfoString(buf, "DELETE FROM ");
 deparseRelation(buf, rel);
 appendStringInfoString(buf, " WHERE ctid = $1");

 deparseReturningList(buf, rte, rtindex, rel,
       rel->trigdesc && rel->trigdesc->trig_delete_after_row,
       NIL, returningList, retrieved_attrs);
}
