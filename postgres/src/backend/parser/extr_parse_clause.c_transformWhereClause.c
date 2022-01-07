
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;
typedef int ParseExprKind ;
typedef int Node ;


 int * coerce_to_boolean (int *,int *,char const*) ;
 int * transformExpr (int *,int *,int ) ;

Node *
transformWhereClause(ParseState *pstate, Node *clause,
      ParseExprKind exprKind, const char *constructName)
{
 Node *qual;

 if (clause == ((void*)0))
  return ((void*)0);

 qual = transformExpr(pstate, clause, exprKind);

 qual = coerce_to_boolean(pstate, qual, constructName);

 return qual;
}
