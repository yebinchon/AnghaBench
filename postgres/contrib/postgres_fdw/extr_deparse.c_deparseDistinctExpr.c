
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_7__ {int args; } ;
typedef int StringInfo ;
typedef TYPE_2__ DistinctExpr ;


 int Assert (int) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 int deparseExpr (int ,TYPE_1__*) ;
 int linitial (int ) ;
 int list_length (int ) ;
 int lsecond (int ) ;

__attribute__((used)) static void
deparseDistinctExpr(DistinctExpr *node, deparse_expr_cxt *context)
{
 StringInfo buf = context->buf;

 Assert(list_length(node->args) == 2);

 appendStringInfoChar(buf, '(');
 deparseExpr(linitial(node->args), context);
 appendStringInfoString(buf, " IS DISTINCT FROM ");
 deparseExpr(lsecond(node->args), context);
 appendStringInfoChar(buf, ')');
}
