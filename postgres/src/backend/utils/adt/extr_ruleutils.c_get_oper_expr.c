
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int buf; } ;
typedef TYPE_1__ deparse_context ;
struct TYPE_10__ {int oprkind; } ;
struct TYPE_9__ {int opno; int * args; } ;
typedef int StringInfo ;
typedef TYPE_2__ OpExpr ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_operator ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int OPEROID ;
 int ObjectIdGetDatum (int) ;
 int PRETTY_PAREN (TYPE_1__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoChar (int ,char) ;
 int elog (int ,char*,int) ;
 int exprType (int *) ;
 int generate_operator_name (int,int ,int ) ;
 int get_rule_expr_paren (int *,TYPE_1__*,int,int *) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 scalar_t__ lsecond (int *) ;

__attribute__((used)) static void
get_oper_expr(OpExpr *expr, deparse_context *context)
{
 StringInfo buf = context->buf;
 Oid opno = expr->opno;
 List *args = expr->args;

 if (!PRETTY_PAREN(context))
  appendStringInfoChar(buf, '(');
 if (list_length(args) == 2)
 {

  Node *arg1 = (Node *) linitial(args);
  Node *arg2 = (Node *) lsecond(args);

  get_rule_expr_paren(arg1, context, 1, (Node *) expr);
  appendStringInfo(buf, " %s ",
       generate_operator_name(opno,
            exprType(arg1),
            exprType(arg2)));
  get_rule_expr_paren(arg2, context, 1, (Node *) expr);
 }
 else
 {

  Node *arg = (Node *) linitial(args);
  HeapTuple tp;
  Form_pg_operator optup;

  tp = SearchSysCache1(OPEROID, ObjectIdGetDatum(opno));
  if (!HeapTupleIsValid(tp))
   elog(ERROR, "cache lookup failed for operator %u", opno);
  optup = (Form_pg_operator) GETSTRUCT(tp);
  switch (optup->oprkind)
  {
   case 'l':
    appendStringInfo(buf, "%s ",
         generate_operator_name(opno,
              InvalidOid,
              exprType(arg)));
    get_rule_expr_paren(arg, context, 1, (Node *) expr);
    break;
   case 'r':
    get_rule_expr_paren(arg, context, 1, (Node *) expr);
    appendStringInfo(buf, " %s",
         generate_operator_name(opno,
              exprType(arg),
              InvalidOid));
    break;
   default:
    elog(ERROR, "bogus oprkind: %d", optup->oprkind);
  }
  ReleaseSysCache(tp);
 }
 if (!PRETTY_PAREN(context))
  appendStringInfoChar(buf, ')');
}
