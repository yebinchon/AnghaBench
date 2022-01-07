
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wgl_dc_data {struct sw_framebuffer* sw_data; } ;
struct sw_framebuffer {TYPE_1__* gl_visual; } ;
struct sw_context {int Mode; struct sw_framebuffer* fb; int gl_ctx; } ;
struct TYPE_2__ {scalar_t__ DBflag; } ;
typedef int * DHGLRC ;


 int ERR (char*) ;
 int GL_BACK ;
 int GL_FRONT ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 struct sw_context* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,struct sw_context*) ;
 int gl_create_context (TYPE_1__*,int *,struct sw_context*) ;

DHGLRC sw_CreateContext(struct wgl_dc_data* dc_data)
{
    struct sw_context* sw_ctx;
    struct sw_framebuffer* fb = dc_data->sw_data;

    sw_ctx = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*sw_ctx));
    if(!sw_ctx)
        return ((void*)0);


    sw_ctx->gl_ctx = gl_create_context(fb->gl_visual, ((void*)0), sw_ctx);
    if(!sw_ctx->gl_ctx)
    {
        ERR("Failed to initialize the mesa context.\n");
        HeapFree(GetProcessHeap(), 0, sw_ctx);
        return ((void*)0);
    }

    sw_ctx->fb = fb;


    sw_ctx->Mode = fb->gl_visual->DBflag ? GL_BACK : GL_FRONT;

    return (DHGLRC)sw_ctx;
}
