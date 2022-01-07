
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlannerInfo ;
typedef int Node ;
typedef int Expr ;


 int EXPRKIND_PHV ;
 scalar_t__ preprocess_expression (int *,int *,int ) ;

Expr *
preprocess_phv_expression(PlannerInfo *root, Expr *expr)
{
 return (Expr *) preprocess_expression(root, (Node *) expr, EXPRKIND_PHV);
}
