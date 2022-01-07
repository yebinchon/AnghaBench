
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rd_indpred; int rd_indexcxt; int * rd_indextuple; } ;
typedef TYPE_1__* Relation ;
typedef int Node ;
typedef int MemoryContext ;
typedef int List ;
typedef int Expr ;
typedef int Datum ;


 int Anum_pg_index_indpred ;
 int Assert (int) ;
 int GetPgIndexDescriptor () ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 char* TextDatumGetCString (int ) ;
 scalar_t__ canonicalize_qual (int *,int) ;
 int * copyObject (int *) ;
 scalar_t__ eval_const_expressions (int *,int *) ;
 int fix_opfuncids (int *) ;
 scalar_t__ heap_attisnull (int *,int ,int *) ;
 int heap_getattr (int *,int ,int ,int*) ;
 int * make_ands_implicit (int *) ;
 int pfree (char*) ;
 scalar_t__ stringToNode (char*) ;

List *
RelationGetIndexPredicate(Relation relation)
{
 List *result;
 Datum predDatum;
 bool isnull;
 char *predString;
 MemoryContext oldcxt;


 if (relation->rd_indpred)
  return copyObject(relation->rd_indpred);


 if (relation->rd_indextuple == ((void*)0) ||
  heap_attisnull(relation->rd_indextuple, Anum_pg_index_indpred, ((void*)0)))
  return NIL;






 predDatum = heap_getattr(relation->rd_indextuple,
        Anum_pg_index_indpred,
        GetPgIndexDescriptor(),
        &isnull);
 Assert(!isnull);
 predString = TextDatumGetCString(predDatum);
 result = (List *) stringToNode(predString);
 pfree(predString);
 result = (List *) eval_const_expressions(((void*)0), (Node *) result);

 result = (List *) canonicalize_qual((Expr *) result, 0);


 result = make_ands_implicit((Expr *) result);


 fix_opfuncids((Node *) result);


 oldcxt = MemoryContextSwitchTo(relation->rd_indexcxt);
 relation->rd_indpred = copyObject(result);
 MemoryContextSwitchTo(oldcxt);

 return result;
}
