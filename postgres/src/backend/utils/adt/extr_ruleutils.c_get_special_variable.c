
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
typedef TYPE_1__ deparse_context ;
typedef int StringInfo ;
typedef int Node ;


 int IsA (int *,int ) ;
 int Var ;
 int appendStringInfoChar (int ,char) ;
 int get_rule_expr (int *,TYPE_1__*,int) ;

__attribute__((used)) static void
get_special_variable(Node *node, deparse_context *context, void *private)
{
 StringInfo buf = context->buf;





 if (!IsA(node, Var))
  appendStringInfoChar(buf, '(');
 get_rule_expr(node, context, 1);
 if (!IsA(node, Var))
  appendStringInfoChar(buf, ')');
}
