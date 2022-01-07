
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int varprefix; int prettyFlags; int indentLevel; int special_exprkind; int wrapColumn; void* windowTList; void* windowClause; int * namespaces; TYPE_2__* buf; } ;
typedef TYPE_1__ deparse_context ;
struct TYPE_6__ {char* data; } ;
typedef TYPE_2__ StringInfoData ;
typedef int Node ;
typedef int List ;


 int EXPR_KIND_NONE ;
 void* NIL ;
 int WRAP_COLUMN_DEFAULT ;
 int get_rule_expr (int *,TYPE_1__*,int) ;
 int initStringInfo (TYPE_2__*) ;

__attribute__((used)) static char *
deparse_expression_pretty(Node *expr, List *dpcontext,
        bool forceprefix, bool showimplicit,
        int prettyFlags, int startIndent)
{
 StringInfoData buf;
 deparse_context context;

 initStringInfo(&buf);
 context.buf = &buf;
 context.namespaces = dpcontext;
 context.windowClause = NIL;
 context.windowTList = NIL;
 context.varprefix = forceprefix;
 context.prettyFlags = prettyFlags;
 context.wrapColumn = WRAP_COLUMN_DEFAULT;
 context.indentLevel = startIndent;
 context.special_exprkind = EXPR_KIND_NONE;

 get_rule_expr(expr, &context, showimplicit);

 return buf.data;
}
