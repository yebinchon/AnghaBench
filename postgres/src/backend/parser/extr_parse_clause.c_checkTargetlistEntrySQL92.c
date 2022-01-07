
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ expr; } ;
typedef TYPE_1__ TargetEntry ;
struct TYPE_7__ {int p_hasWindowFuncs; int p_hasAggs; } ;
typedef TYPE_2__ ParseState ;
typedef int ParseExprKind ;
typedef int Node ;


 int ERRCODE_GROUPING_ERROR ;
 int ERRCODE_WINDOWING_ERROR ;
 int ERROR ;



 int ParseExprKindName (int) ;
 int contain_aggs_of_level (int *,int ) ;
 int contain_windowfuncs (int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int locate_agg_of_level (int *,int ) ;
 int locate_windowfunc (int *) ;
 int parser_errposition (TYPE_2__*,int ) ;

__attribute__((used)) static void
checkTargetlistEntrySQL92(ParseState *pstate, TargetEntry *tle,
        ParseExprKind exprKind)
{
 switch (exprKind)
 {
  case 129:

   if (pstate->p_hasAggs &&
    contain_aggs_of_level((Node *) tle->expr, 0))
    ereport(ERROR,
      (errcode(ERRCODE_GROUPING_ERROR),

       errmsg("aggregate functions are not allowed in %s",
        ParseExprKindName(exprKind)),
       parser_errposition(pstate,
           locate_agg_of_level((Node *) tle->expr, 0))));
   if (pstate->p_hasWindowFuncs &&
    contain_windowfuncs((Node *) tle->expr))
    ereport(ERROR,
      (errcode(ERRCODE_WINDOWING_ERROR),

       errmsg("window functions are not allowed in %s",
        ParseExprKindName(exprKind)),
       parser_errposition(pstate,
           locate_windowfunc((Node *) tle->expr))));
   break;
  case 128:

   break;
  case 130:

   break;
  default:
   elog(ERROR, "unexpected exprKind in checkTargetlistEntrySQL92");
   break;
 }
}
