
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int quals; } ;
struct TYPE_6__ {int * p_namespace; } ;
typedef TYPE_1__ ParseState ;
typedef int Node ;
typedef int List ;
typedef TYPE_2__ JoinExpr ;


 int EXPR_KIND_JOIN_ON ;
 int setNamespaceLateralState (int *,int,int) ;
 int * transformWhereClause (TYPE_1__*,int ,int ,char*) ;

__attribute__((used)) static Node *
transformJoinOnClause(ParseState *pstate, JoinExpr *j, List *namespace)
{
 Node *result;
 List *save_namespace;
 setNamespaceLateralState(namespace, 0, 1);

 save_namespace = pstate->p_namespace;
 pstate->p_namespace = namespace;

 result = transformWhereClause(pstate, j->quals,
          EXPR_KIND_JOIN_ON, "JOIN/ON");

 pstate->p_namespace = save_namespace;

 return result;
}
