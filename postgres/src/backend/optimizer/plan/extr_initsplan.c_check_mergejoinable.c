
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int args; int opno; } ;
struct TYPE_4__ {int mergeopfamilies; scalar_t__ pseudoconstant; int * clause; } ;
typedef TYPE_1__ RestrictInfo ;
typedef TYPE_2__ OpExpr ;
typedef int Oid ;
typedef int Node ;
typedef int Expr ;


 int contain_volatile_functions (int *) ;
 int exprType (int *) ;
 int get_mergejoin_opfamilies (int ) ;
 int is_opclause (int *) ;
 int * linitial (int ) ;
 int list_length (int ) ;
 scalar_t__ op_mergejoinable (int ,int ) ;

__attribute__((used)) static void
check_mergejoinable(RestrictInfo *restrictinfo)
{
 Expr *clause = restrictinfo->clause;
 Oid opno;
 Node *leftarg;

 if (restrictinfo->pseudoconstant)
  return;
 if (!is_opclause(clause))
  return;
 if (list_length(((OpExpr *) clause)->args) != 2)
  return;

 opno = ((OpExpr *) clause)->opno;
 leftarg = linitial(((OpExpr *) clause)->args);

 if (op_mergejoinable(opno, exprType(leftarg)) &&
  !contain_volatile_functions((Node *) clause))
  restrictinfo->mergeopfamilies = get_mergejoin_opfamilies(opno);






}
