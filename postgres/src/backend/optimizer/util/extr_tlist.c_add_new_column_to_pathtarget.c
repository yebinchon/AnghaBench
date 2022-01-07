
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exprs; } ;
typedef TYPE_1__ PathTarget ;
typedef int Expr ;


 int add_column_to_pathtarget (TYPE_1__*,int *,int ) ;
 int list_member (int ,int *) ;

void
add_new_column_to_pathtarget(PathTarget *target, Expr *expr)
{
 if (!list_member(target->exprs, expr))
  add_column_to_pathtarget(target, expr, 0);
}
