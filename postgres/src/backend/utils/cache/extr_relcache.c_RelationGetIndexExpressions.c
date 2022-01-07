
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rd_indexprs; int rd_indexcxt; int * rd_indextuple; } ;
typedef TYPE_1__* Relation ;
typedef int Node ;
typedef int MemoryContext ;
typedef int List ;
typedef int Datum ;


 int Anum_pg_index_indexprs ;
 int Assert (int) ;
 int GetPgIndexDescriptor () ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 char* TextDatumGetCString (int ) ;
 int * copyObject (int *) ;
 scalar_t__ eval_const_expressions (int *,int *) ;
 int fix_opfuncids (int *) ;
 scalar_t__ heap_attisnull (int *,int ,int *) ;
 int heap_getattr (int *,int ,int ,int*) ;
 int pfree (char*) ;
 scalar_t__ stringToNode (char*) ;

List *
RelationGetIndexExpressions(Relation relation)
{
 List *result;
 Datum exprsDatum;
 bool isnull;
 char *exprsString;
 MemoryContext oldcxt;


 if (relation->rd_indexprs)
  return copyObject(relation->rd_indexprs);


 if (relation->rd_indextuple == ((void*)0) ||
  heap_attisnull(relation->rd_indextuple, Anum_pg_index_indexprs, ((void*)0)))
  return NIL;






 exprsDatum = heap_getattr(relation->rd_indextuple,
         Anum_pg_index_indexprs,
         GetPgIndexDescriptor(),
         &isnull);
 Assert(!isnull);
 exprsString = TextDatumGetCString(exprsDatum);
 result = (List *) stringToNode(exprsString);
 pfree(exprsString);
 result = (List *) eval_const_expressions(((void*)0), (Node *) result);


 fix_opfuncids((Node *) result);


 oldcxt = MemoryContextSwitchTo(relation->rd_indexcxt);
 relation->rd_indexprs = copyObject(result);
 MemoryContextSwitchTo(oldcxt);

 return result;
}
