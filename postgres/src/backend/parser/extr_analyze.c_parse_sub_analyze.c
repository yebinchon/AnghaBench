
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_locked_from_parent; int p_resolve_unknowns; int * p_parent_cte; } ;
typedef int Query ;
typedef TYPE_1__ ParseState ;
typedef int Node ;
typedef int CommonTableExpr ;


 int free_parsestate (TYPE_1__*) ;
 TYPE_1__* make_parsestate (TYPE_1__*) ;
 int * transformStmt (TYPE_1__*,int *) ;

Query *
parse_sub_analyze(Node *parseTree, ParseState *parentParseState,
      CommonTableExpr *parentCTE,
      bool locked_from_parent,
      bool resolve_unknowns)
{
 ParseState *pstate = make_parsestate(parentParseState);
 Query *query;

 pstate->p_parent_cte = parentCTE;
 pstate->p_locked_from_parent = locked_from_parent;
 pstate->p_resolve_unknowns = resolve_unknowns;

 query = transformStmt(pstate, parseTree);

 free_parsestate(pstate);

 return query;
}
