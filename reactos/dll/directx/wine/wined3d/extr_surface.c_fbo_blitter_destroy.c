
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_context {int dummy; } ;
struct wined3d_blitter {TYPE_1__* ops; struct wined3d_blitter* next; } ;
struct TYPE_2__ {int (* blitter_destroy ) (struct wined3d_blitter*,struct wined3d_context*) ;} ;


 int heap_free (struct wined3d_blitter*) ;
 int stub1 (struct wined3d_blitter*,struct wined3d_context*) ;

__attribute__((used)) static void fbo_blitter_destroy(struct wined3d_blitter *blitter, struct wined3d_context *context)
{
    struct wined3d_blitter *next;

    if ((next = blitter->next))
        next->ops->blitter_destroy(next, context);

    heap_free(blitter);
}
