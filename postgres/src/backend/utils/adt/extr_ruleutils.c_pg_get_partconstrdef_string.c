
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int Expr ;


 int * deparse_context_for (char*,int ) ;
 char* deparse_expression (int *,int *,int,int) ;
 int * get_partition_qual_relid (int ) ;

char *
pg_get_partconstrdef_string(Oid partitionId, char *aliasname)
{
 Expr *constr_expr;
 List *context;

 constr_expr = get_partition_qual_relid(partitionId);
 context = deparse_context_for(aliasname, partitionId);

 return deparse_expression((Node *) constr_expr, context, 1, 0);
}
