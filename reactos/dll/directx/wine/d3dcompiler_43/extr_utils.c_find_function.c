
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int functions; } ;
typedef int BOOL ;


 TYPE_1__ hlsl_ctx ;
 int * wine_rb_get (int *,char const*) ;

BOOL find_function(const char *name)
{
    return wine_rb_get(&hlsl_ctx.functions, name) != ((void*)0);
}
