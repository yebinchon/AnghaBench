
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outer_hasSubLinks; int varno; } ;
typedef TYPE_1__ pullup_replace_vars_context ;
typedef int Node ;


 int pullup_replace_vars_callback ;
 int * replace_rte_variables (int *,int ,int ,int ,void*,int ) ;

__attribute__((used)) static Node *
pullup_replace_vars(Node *expr, pullup_replace_vars_context *context)
{
 return replace_rte_variables(expr,
         context->varno, 0,
         pullup_replace_vars_callback,
         (void *) context,
         context->outer_hasSubLinks);
}
