
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_7__ {scalar_t__ nulltesttype; scalar_t__ arg; scalar_t__ argisrow; } ;
typedef int StringInfo ;
typedef TYPE_2__ NullTest ;
typedef int Node ;


 scalar_t__ IS_NULL ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 int deparseExpr (scalar_t__,TYPE_1__*) ;
 int exprType (int *) ;
 int type_is_rowtype (int ) ;

__attribute__((used)) static void
deparseNullTest(NullTest *node, deparse_expr_cxt *context)
{
 StringInfo buf = context->buf;

 appendStringInfoChar(buf, '(');
 deparseExpr(node->arg, context);







 if (node->argisrow || !type_is_rowtype(exprType((Node *) node->arg)))
 {
  if (node->nulltesttype == IS_NULL)
   appendStringInfoString(buf, " IS NULL)");
  else
   appendStringInfoString(buf, " IS NOT NULL)");
 }
 else
 {
  if (node->nulltesttype == IS_NULL)
   appendStringInfoString(buf, " IS NOT DISTINCT FROM NULL)");
  else
   appendStringInfoString(buf, " IS DISTINCT FROM NULL)");
 }
}
