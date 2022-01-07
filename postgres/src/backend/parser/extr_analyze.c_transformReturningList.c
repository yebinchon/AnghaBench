
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_next_resno; scalar_t__ p_resolve_unknowns; } ;
typedef TYPE_1__ ParseState ;
typedef int List ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int EXPR_KIND_RETURNING ;
 int * NIL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int exprLocation (int ) ;
 int linitial (int *) ;
 int markTargetListOrigins (TYPE_1__*,int *) ;
 int parser_errposition (TYPE_1__*,int ) ;
 int resolveTargetListUnknowns (TYPE_1__*,int *) ;
 int * transformTargetList (TYPE_1__*,int *,int ) ;

__attribute__((used)) static List *
transformReturningList(ParseState *pstate, List *returningList)
{
 List *rlist;
 int save_next_resno;

 if (returningList == NIL)
  return NIL;






 save_next_resno = pstate->p_next_resno;
 pstate->p_next_resno = 1;


 rlist = transformTargetList(pstate, returningList, EXPR_KIND_RETURNING);







 if (rlist == NIL)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("RETURNING must have at least one column"),
     parser_errposition(pstate,
         exprLocation(linitial(returningList)))));


 markTargetListOrigins(pstate, rlist);


 if (pstate->p_resolve_unknowns)
  resolveTargetListUnknowns(pstate, rlist);


 pstate->p_next_resno = save_next_resno;

 return rlist;
}
