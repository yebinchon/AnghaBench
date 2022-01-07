
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wine_rb_tree {int dummy; } ;
struct TYPE_2__ {int functions; } ;


 int compare_function_rb ;
 TYPE_1__ hlsl_ctx ;
 int wine_rb_init (int *,int ) ;

void init_functions_tree(struct wine_rb_tree *funcs)
{
    wine_rb_init(&hlsl_ctx.functions, compare_function_rb);
}
