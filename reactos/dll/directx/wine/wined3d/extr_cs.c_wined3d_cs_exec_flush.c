
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_cs {int device; } ;
struct wined3d_context {TYPE_3__* gl_info; scalar_t__ valid; } ;
struct TYPE_4__ {int (* p_glFlush ) () ;} ;
struct TYPE_5__ {TYPE_1__ gl; } ;
struct TYPE_6__ {TYPE_2__ gl_ops; } ;


 struct wined3d_context* context_acquire (int ,int *,int ) ;
 int context_release (struct wined3d_context*) ;
 int stub1 () ;

__attribute__((used)) static void wined3d_cs_exec_flush(struct wined3d_cs *cs, const void *data)
{
    struct wined3d_context *context;

    context = context_acquire(cs->device, ((void*)0), 0);
    if (context->valid)
        context->gl_info->gl_ops.gl.p_glFlush();
    context_release(context);
}
