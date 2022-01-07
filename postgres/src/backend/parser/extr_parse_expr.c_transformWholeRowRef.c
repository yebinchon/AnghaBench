
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int location; } ;
typedef TYPE_1__ Var ;
typedef int RangeTblEntry ;
typedef int ParseState ;
typedef int Node ;


 int RTERangeTablePosn (int *,int *,int*) ;
 TYPE_1__* makeWholeRowVar (int *,int,int,int) ;
 int markVarForSelectPriv (int *,TYPE_1__*,int *) ;

__attribute__((used)) static Node *
transformWholeRowRef(ParseState *pstate, RangeTblEntry *rte, int location)
{
 Var *result;
 int vnum;
 int sublevels_up;


 vnum = RTERangeTablePosn(pstate, rte, &sublevels_up);
 result = makeWholeRowVar(rte, vnum, sublevels_up, 1);


 result->location = location;


 markVarForSelectPriv(pstate, result, rte);

 return (Node *) result;
}
