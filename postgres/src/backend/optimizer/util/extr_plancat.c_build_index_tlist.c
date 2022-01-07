
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int attcollation; int atttypmod; int atttypid; } ;
struct TYPE_11__ {int ncolumns; int* indexkeys; int indexprs; TYPE_1__* rel; } ;
struct TYPE_10__ {int rd_att; } ;
struct TYPE_9__ {int relid; } ;
typedef TYPE_2__* Relation ;
typedef int PlannerInfo ;
typedef int ListCell ;
typedef int List ;
typedef TYPE_3__ IndexOptInfo ;
typedef int Index ;
typedef TYPE_4__ FormData_pg_attribute ;
typedef int Expr ;


 int ERROR ;
 int * NIL ;
 TYPE_4__* SystemAttributeDefinition (int) ;
 TYPE_4__* TupleDescAttr (int ,int) ;
 int elog (int ,char*) ;
 int * lappend (int *,int ) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (int ) ;
 int * lnext (int ,int *) ;
 int makeTargetEntry (int *,int,int *,int) ;
 scalar_t__ makeVar (int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static List *
build_index_tlist(PlannerInfo *root, IndexOptInfo *index,
      Relation heapRelation)
{
 List *tlist = NIL;
 Index varno = index->rel->relid;
 ListCell *indexpr_item;
 int i;

 indexpr_item = list_head(index->indexprs);
 for (i = 0; i < index->ncolumns; i++)
 {
  int indexkey = index->indexkeys[i];
  Expr *indexvar;

  if (indexkey != 0)
  {

   const FormData_pg_attribute *att_tup;

   if (indexkey < 0)
    att_tup = SystemAttributeDefinition(indexkey);
   else
    att_tup = TupleDescAttr(heapRelation->rd_att, indexkey - 1);

   indexvar = (Expr *) makeVar(varno,
          indexkey,
          att_tup->atttypid,
          att_tup->atttypmod,
          att_tup->attcollation,
          0);
  }
  else
  {

   if (indexpr_item == ((void*)0))
    elog(ERROR, "wrong number of index expressions");
   indexvar = (Expr *) lfirst(indexpr_item);
   indexpr_item = lnext(index->indexprs, indexpr_item);
  }

  tlist = lappend(tlist,
      makeTargetEntry(indexvar,
          i + 1,
          ((void*)0),
          0));
 }
 if (indexpr_item != ((void*)0))
  elog(ERROR, "wrong number of index expressions");

 return tlist;
}
