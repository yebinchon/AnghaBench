
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ opresulttype; scalar_t__ opretset; } ;
struct TYPE_6__ {int p_last_srf; } ;
typedef TYPE_1__ ParseState ;
typedef TYPE_2__ OpExpr ;
typedef int Node ;
typedef int List ;
typedef int Expr ;


 scalar_t__ BOOLOID ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int NodeSetTag (int *,int ) ;
 int T_DistinctExpr ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int * make_op (TYPE_1__*,int *,int *,int *,int ,int) ;
 int parser_errposition (TYPE_1__*,int) ;

__attribute__((used)) static Expr *
make_distinct_op(ParseState *pstate, List *opname, Node *ltree, Node *rtree,
     int location)
{
 Expr *result;

 result = make_op(pstate, opname, ltree, rtree,
      pstate->p_last_srf, location);
 if (((OpExpr *) result)->opresulttype != BOOLOID)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("IS DISTINCT FROM requires = operator to yield boolean"),
     parser_errposition(pstate, location)));
 if (((OpExpr *) result)->opretset)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),

     errmsg("%s must not return a set", "IS DISTINCT FROM"),
     parser_errposition(pstate, location)));




 NodeSetTag(result, T_DistinctExpr);

 return result;
}
