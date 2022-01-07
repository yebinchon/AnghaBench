
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buf; int prettyFlags; } ;
typedef TYPE_1__ deparse_context ;
typedef int Node ;


 scalar_t__ PRETTY_PAREN (TYPE_1__*) ;
 int appendStringInfoChar (int ,char) ;
 int get_rule_expr (int *,TYPE_1__*,int) ;
 int isSimpleNode (int *,int *,int ) ;

__attribute__((used)) static void
get_rule_expr_paren(Node *node, deparse_context *context,
     bool showimplicit, Node *parentNode)
{
 bool need_paren;

 need_paren = PRETTY_PAREN(context) &&
  !isSimpleNode(node, parentNode, context->prettyFlags);

 if (need_paren)
  appendStringInfoChar(context->buf, '(');

 get_rule_expr(node, context, showimplicit);

 if (need_paren)
  appendStringInfoChar(context->buf, ')');
}
