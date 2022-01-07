
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
typedef TYPE_1__ deparse_context ;
typedef int StringInfo ;
typedef int Node ;


 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;
 int exprType (int *) ;
 int exprTypmod (int *) ;
 int format_type_with_typemod (int ,int ) ;
 int get_rule_expr (int *,TYPE_1__*,int) ;
 scalar_t__ looks_like_function (int *) ;

__attribute__((used)) static void
get_rule_expr_funccall(Node *node, deparse_context *context,
        bool showimplicit)
{
 if (looks_like_function(node))
  get_rule_expr(node, context, showimplicit);
 else
 {
  StringInfo buf = context->buf;

  appendStringInfoString(buf, "CAST(");

  get_rule_expr(node, context, 0);
  appendStringInfo(buf, " AS %s)",
       format_type_with_typemod(exprType(node),
              exprTypmod(node)));
 }
}
