
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ state; int collation; } ;
typedef TYPE_2__ foreign_loc_cxt ;
struct TYPE_12__ {int relids; TYPE_4__* foreignrel; int * root; } ;
typedef TYPE_3__ foreign_glob_cxt ;
struct TYPE_14__ {TYPE_1__* outerrel; } ;
struct TYPE_13__ {int relids; scalar_t__ fdw_private; } ;
struct TYPE_10__ {int relids; } ;
typedef TYPE_4__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_5__ PgFdwRelationInfo ;
typedef int Node ;
typedef int Expr ;


 scalar_t__ FDW_COLLATE_NONE ;
 scalar_t__ FDW_COLLATE_UNSAFE ;
 scalar_t__ IS_UPPER_REL (TYPE_4__*) ;
 int InvalidOid ;
 scalar_t__ contain_mutable_functions (int *) ;
 int foreign_expr_walker (int *,TYPE_3__*,TYPE_2__*) ;

bool
is_foreign_expr(PlannerInfo *root,
    RelOptInfo *baserel,
    Expr *expr)
{
 foreign_glob_cxt glob_cxt;
 foreign_loc_cxt loc_cxt;
 PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) (baserel->fdw_private);





 glob_cxt.root = root;
 glob_cxt.foreignrel = baserel;






 if (IS_UPPER_REL(baserel))
  glob_cxt.relids = fpinfo->outerrel->relids;
 else
  glob_cxt.relids = baserel->relids;
 loc_cxt.collation = InvalidOid;
 loc_cxt.state = FDW_COLLATE_NONE;
 if (!foreign_expr_walker((Node *) expr, &glob_cxt, &loc_cxt))
  return 0;





 if (loc_cxt.state == FDW_COLLATE_UNSAFE)
  return 0;
 if (contain_mutable_functions((Node *) expr))
  return 0;


 return 1;
}
