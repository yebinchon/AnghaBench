
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_7__ {int args; scalar_t__ useOr; int opno; } ;
typedef int StringInfo ;
typedef TYPE_2__ ScalarArrayOpExpr ;
typedef int HeapTuple ;
typedef scalar_t__ Form_pg_operator ;
typedef int Expr ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfo (int ,char*,char*) ;
 int appendStringInfoChar (int ,char) ;
 int deparseExpr (int *,TYPE_1__*) ;
 int deparseOperatorName (int ,scalar_t__) ;
 int elog (int ,char*,int ) ;
 int * linitial (int ) ;
 int list_length (int ) ;
 int * lsecond (int ) ;

__attribute__((used)) static void
deparseScalarArrayOpExpr(ScalarArrayOpExpr *node, deparse_expr_cxt *context)
{
 StringInfo buf = context->buf;
 HeapTuple tuple;
 Form_pg_operator form;
 Expr *arg1;
 Expr *arg2;


 tuple = SearchSysCache1(OPEROID, ObjectIdGetDatum(node->opno));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for operator %u", node->opno);
 form = (Form_pg_operator) GETSTRUCT(tuple);


 Assert(list_length(node->args) == 2);


 appendStringInfoChar(buf, '(');


 arg1 = linitial(node->args);
 deparseExpr(arg1, context);
 appendStringInfoChar(buf, ' ');


 deparseOperatorName(buf, form);
 appendStringInfo(buf, " %s (", node->useOr ? "ANY" : "ALL");


 arg2 = lsecond(node->args);
 deparseExpr(arg2, context);

 appendStringInfoChar(buf, ')');


 appendStringInfoChar(buf, ')');

 ReleaseSysCache(tuple);
}
