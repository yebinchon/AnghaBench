
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opno; int * args; } ;
typedef TYPE_1__ OpExpr ;
typedef int Node ;
typedef int List ;


 int exprType (int *) ;
 char* generate_operator_name (int ,int ,int ) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 scalar_t__ lsecond (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *
get_simple_binary_op_name(OpExpr *expr)
{
 List *args = expr->args;

 if (list_length(args) == 2)
 {

  Node *arg1 = (Node *) linitial(args);
  Node *arg2 = (Node *) lsecond(args);
  const char *op;

  op = generate_operator_name(expr->opno, exprType(arg1), exprType(arg2));
  if (strlen(op) == 1)
   return op;
 }
 return ((void*)0);
}
