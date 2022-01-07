
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int List ;
typedef int Expr ;


 int AND_EXPR ;
 int AccessShareLock ;
 int * NIL ;
 int NoLock ;
 int * generate_partition_qual (int ) ;
 scalar_t__ get_rel_relispartition (int ) ;
 int * linitial (int *) ;
 int list_length (int *) ;
 int * makeBoolExpr (int ,int *,int) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;

Expr *
get_partition_qual_relid(Oid relid)
{
 Expr *result = ((void*)0);


 if (get_rel_relispartition(relid))
 {
  Relation rel = relation_open(relid, AccessShareLock);
  List *and_args;

  and_args = generate_partition_qual(rel);


  if (and_args == NIL)
   result = ((void*)0);
  else if (list_length(and_args) > 1)
   result = makeBoolExpr(AND_EXPR, and_args, -1);
  else
   result = linitial(and_args);


  relation_close(rel, NoLock);
 }

 return result;
}
