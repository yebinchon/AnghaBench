
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int varlevelsup; int varno; } ;
typedef TYPE_2__ Var ;
struct TYPE_10__ {TYPE_1__* outerrel; } ;
struct TYPE_9__ {int relids; scalar_t__ fdw_private; } ;
struct TYPE_7__ {int relids; } ;
typedef int Relids ;
typedef TYPE_3__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_4__ PgFdwRelationInfo ;
typedef int Expr ;


 int IS_UPPER_REL (TYPE_3__*) ;


 int bms_is_member (int ,int ) ;
 int nodeTag (int *) ;

bool
is_foreign_param(PlannerInfo *root,
     RelOptInfo *baserel,
     Expr *expr)
{
 if (expr == ((void*)0))
  return 0;

 switch (nodeTag(expr))
 {
  case 128:
   {

    Var *var = (Var *) expr;
    PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) (baserel->fdw_private);
    Relids relids;

    if (IS_UPPER_REL(baserel))
     relids = fpinfo->outerrel->relids;
    else
     relids = baserel->relids;

    if (bms_is_member(var->varno, relids) && var->varlevelsup == 0)
     return 0;
    else
     return 1;
    break;
   }
  case 129:

   return 1;
  default:
   break;
 }
 return 0;
}
