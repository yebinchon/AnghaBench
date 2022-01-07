
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_gl_info {scalar_t__* supported; } ;
struct TYPE_2__ {int id; int * sync; } ;
struct wined3d_fence {int entry; struct wined3d_context* context; TYPE_1__ object; } ;
struct wined3d_context {int free_fence_count; int fences; TYPE_1__* free_fences; struct wined3d_gl_info* gl_info; } ;


 size_t APPLE_FENCE ;
 size_t ARB_SYNC ;
 int GL_EXTCALL (int ) ;
 size_t NV_FENCE ;
 int TRACE (char*,struct wined3d_context*,...) ;
 int WARN (char*) ;
 int checkGLcall (char*) ;
 int glGenFencesAPPLE (int,int *) ;
 int glGenFencesNV (int,int *) ;
 int list_add_head (int *,int *) ;

void context_alloc_fence(struct wined3d_context *context, struct wined3d_fence *fence)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (context->free_fence_count)
    {
        fence->object = context->free_fences[--context->free_fence_count];
    }
    else
    {
        if (gl_info->supported[ARB_SYNC])
        {

            fence->object.sync = ((void*)0);
            TRACE("Allocated sync object in context %p.\n", context);
        }
        else if (gl_info->supported[APPLE_FENCE])
        {
            GL_EXTCALL(glGenFencesAPPLE(1, &fence->object.id));
            checkGLcall("glGenFencesAPPLE");

            TRACE("Allocated fence %u in context %p.\n", fence->object.id, context);
        }
        else if(gl_info->supported[NV_FENCE])
        {
            GL_EXTCALL(glGenFencesNV(1, &fence->object.id));
            checkGLcall("glGenFencesNV");

            TRACE("Allocated fence %u in context %p.\n", fence->object.id, context);
        }
        else
        {
            WARN("Fences not supported, not allocating fence.\n");
            fence->object.id = 0;
        }
    }

    fence->context = context;
    list_add_head(&context->fences, &fence->entry);
}
