
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_context {int * hook; } ;
typedef scalar_t__ DHGLRC ;


 int UnhookWindowsHookEx (int *) ;
 int gl_make_current (int *,int *) ;

void sw_ReleaseContext(DHGLRC dhglrc)
{
    struct sw_context* sw_ctx = (struct sw_context*)dhglrc;


    gl_make_current(((void*)0), ((void*)0));


    if(sw_ctx->hook)
    {
        UnhookWindowsHookEx(sw_ctx->hook);
        sw_ctx->hook = ((void*)0);
    }
}
