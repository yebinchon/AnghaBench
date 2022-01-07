
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_context {int * gl_ctx; } ;
typedef int GLcontext ;


 scalar_t__ IntGetCurrentDHGLRC () ;

GLcontext* gl_get_thread_context(void)
{
    struct sw_context* sw_ctx = (struct sw_context*)IntGetCurrentDHGLRC();
    return sw_ctx->gl_ctx;
}
