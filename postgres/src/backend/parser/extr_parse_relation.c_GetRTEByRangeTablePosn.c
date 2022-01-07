
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_rtable; struct TYPE_3__* parentParseState; } ;
typedef int RangeTblEntry ;
typedef TYPE_1__ ParseState ;


 int Assert (int) ;
 int list_length (int ) ;
 int * rt_fetch (int,int ) ;

RangeTblEntry *
GetRTEByRangeTablePosn(ParseState *pstate,
        int varno,
        int sublevels_up)
{
 while (sublevels_up-- > 0)
 {
  pstate = pstate->parentParseState;
  Assert(pstate != ((void*)0));
 }
 Assert(varno > 0 && varno <= list_length(pstate->p_rtable));
 return rt_fetch(varno, pstate->p_rtable);
}
