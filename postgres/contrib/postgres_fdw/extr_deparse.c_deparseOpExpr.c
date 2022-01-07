
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_10__ {char oprkind; } ;
struct TYPE_9__ {int args; int opno; } ;
typedef int StringInfo ;
typedef TYPE_2__ OpExpr ;
typedef int ListCell ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_operator ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfoChar (int ,char) ;
 int deparseExpr (int ,TYPE_1__*) ;
 int deparseOperatorName (int ,TYPE_3__*) ;
 int elog (int ,char*,int ) ;
 int lfirst (int *) ;
 int * list_head (int ) ;
 int list_length (int ) ;
 int * list_tail (int ) ;

__attribute__((used)) static void
deparseOpExpr(OpExpr *node, deparse_expr_cxt *context)
{
 StringInfo buf = context->buf;
 HeapTuple tuple;
 Form_pg_operator form;
 char oprkind;
 ListCell *arg;


 tuple = SearchSysCache1(OPEROID, ObjectIdGetDatum(node->opno));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for operator %u", node->opno);
 form = (Form_pg_operator) GETSTRUCT(tuple);
 oprkind = form->oprkind;


 Assert((oprkind == 'r' && list_length(node->args) == 1) ||
     (oprkind == 'l' && list_length(node->args) == 1) ||
     (oprkind == 'b' && list_length(node->args) == 2));


 appendStringInfoChar(buf, '(');


 if (oprkind == 'r' || oprkind == 'b')
 {
  arg = list_head(node->args);
  deparseExpr(lfirst(arg), context);
  appendStringInfoChar(buf, ' ');
 }


 deparseOperatorName(buf, form);


 if (oprkind == 'l' || oprkind == 'b')
 {
  arg = list_tail(node->args);
  appendStringInfoChar(buf, ' ');
  deparseExpr(lfirst(arg), context);
 }

 appendStringInfoChar(buf, ')');

 ReleaseSysCache(tuple);
}
