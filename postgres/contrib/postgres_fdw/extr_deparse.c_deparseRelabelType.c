
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_7__ {scalar_t__ relabelformat; int resulttypmod; int resulttype; int arg; } ;
typedef TYPE_2__ RelabelType ;


 scalar_t__ COERCE_IMPLICIT_CAST ;
 int appendStringInfo (int ,char*,int ) ;
 int deparseExpr (int ,TYPE_1__*) ;
 int deparse_type_name (int ,int ) ;

__attribute__((used)) static void
deparseRelabelType(RelabelType *node, deparse_expr_cxt *context)
{
 deparseExpr(node->arg, context);
 if (node->relabelformat != COERCE_IMPLICIT_CAST)
  appendStringInfo(context->buf, "::%s",
       deparse_type_name(node->resulttype,
             node->resulttypmod));
}
