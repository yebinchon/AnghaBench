
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int partnatts; scalar_t__* partattrs; int partexprs; int * parttypcoll; int * parttypmod; int * parttypid; } ;
struct TYPE_6__ {scalar_t__ relid; int ** nullable_partexprs; int ** partexprs; } ;
typedef int Relation ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__* PartitionKey ;
typedef int Node ;
typedef int ListCell ;
typedef int List ;
typedef scalar_t__ Index ;
typedef int Expr ;
typedef scalar_t__ AttrNumber ;


 int Assert (int) ;
 int ChangeVarNodes (int *,int,scalar_t__,int ) ;
 int ERROR ;
 scalar_t__ IS_SIMPLE_REL (TYPE_1__*) ;
 scalar_t__ InvalidAttrNumber ;
 TYPE_2__* RelationGetPartitionKey (int ) ;
 scalar_t__ copyObject (int ) ;
 int elog (int ,char*) ;
 int lfirst (int *) ;
 int * list_head (int ) ;
 int * list_make1 (int *) ;
 int * lnext (int ,int *) ;
 scalar_t__ makeVar (scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static void
set_baserel_partition_key_exprs(Relation relation,
        RelOptInfo *rel)
{
 PartitionKey partkey = RelationGetPartitionKey(relation);
 int partnatts;
 int cnt;
 List **partexprs;
 ListCell *lc;
 Index varno = rel->relid;

 Assert(IS_SIMPLE_REL(rel) && rel->relid > 0);


 Assert(partkey != ((void*)0));

 partnatts = partkey->partnatts;
 partexprs = (List **) palloc(sizeof(List *) * partnatts);
 lc = list_head(partkey->partexprs);

 for (cnt = 0; cnt < partnatts; cnt++)
 {
  Expr *partexpr;
  AttrNumber attno = partkey->partattrs[cnt];

  if (attno != InvalidAttrNumber)
  {

   Assert(attno > 0);

   partexpr = (Expr *) makeVar(varno, attno,
          partkey->parttypid[cnt],
          partkey->parttypmod[cnt],
          partkey->parttypcoll[cnt], 0);
  }
  else
  {
   if (lc == ((void*)0))
    elog(ERROR, "wrong number of partition key expressions");


   partexpr = (Expr *) copyObject(lfirst(lc));
   ChangeVarNodes((Node *) partexpr, 1, varno, 0);
   lc = lnext(partkey->partexprs, lc);
  }

  partexprs[cnt] = list_make1(partexpr);
 }

 rel->partexprs = partexprs;







 rel->nullable_partexprs = (List **) palloc0(sizeof(List *) * partnatts);
}
