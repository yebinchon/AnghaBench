
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int dummy; } ;
typedef int js_State ;


 scalar_t__ js_getcontext (int *) ;

__attribute__((used)) static struct script_ctx *jctx(js_State *J)
{
    return (struct script_ctx *)js_getcontext(J);
}
