
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int indirection; } ;
typedef int ParseState ;
typedef int ParseExprKind ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ A_Indirection ;


 int * ExpandRowReference (int *,int *,int) ;
 TYPE_1__* copyObject (TYPE_1__*) ;
 scalar_t__ list_length (int ) ;
 int list_truncate (int ,scalar_t__) ;
 int * transformExpr (int *,int *,int ) ;

__attribute__((used)) static List *
ExpandIndirectionStar(ParseState *pstate, A_Indirection *ind,
       bool make_target_entry, ParseExprKind exprKind)
{
 Node *expr;


 ind = copyObject(ind);
 ind->indirection = list_truncate(ind->indirection,
          list_length(ind->indirection) - 1);


 expr = transformExpr(pstate, (Node *) ind, exprKind);


 return ExpandRowReference(pstate, expr, make_target_entry);
}
