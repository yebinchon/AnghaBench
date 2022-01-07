
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int buf; TYPE_3__* root; } ;
typedef TYPE_2__ deparse_expr_cxt ;
struct TYPE_8__ {TYPE_1__* parse; } ;
struct TYPE_6__ {scalar_t__ limitOffset; scalar_t__ limitCount; } ;
typedef int StringInfo ;
typedef TYPE_3__ PlannerInfo ;
typedef int Expr ;


 int appendStringInfoString (int ,char*) ;
 int deparseExpr (int *,TYPE_2__*) ;
 int reset_transmission_modes (int) ;
 int set_transmission_modes () ;

__attribute__((used)) static void
appendLimitClause(deparse_expr_cxt *context)
{
 PlannerInfo *root = context->root;
 StringInfo buf = context->buf;
 int nestlevel;


 nestlevel = set_transmission_modes();

 if (root->parse->limitCount)
 {
  appendStringInfoString(buf, " LIMIT ");
  deparseExpr((Expr *) root->parse->limitCount, context);
 }
 if (root->parse->limitOffset)
 {
  appendStringInfoString(buf, " OFFSET ");
  deparseExpr((Expr *) root->parse->limitOffset, context);
 }

 reset_transmission_modes(nestlevel);
}
