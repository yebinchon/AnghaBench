
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Var ;
struct TYPE_3__ {scalar_t__ expr; int resno; } ;
typedef TYPE_1__ TargetEntry ;
typedef int Node ;
typedef int Index ;


 int exprCollation (int *) ;
 int exprType (int *) ;
 int exprTypmod (int *) ;
 int * makeVar (int ,int ,int ,int ,int ,int ) ;

Var *
makeVarFromTargetEntry(Index varno,
        TargetEntry *tle)
{
 return makeVar(varno,
       tle->resno,
       exprType((Node *) tle->expr),
       exprTypmod((Node *) tle->expr),
       exprCollation((Node *) tle->expr),
       0);
}
