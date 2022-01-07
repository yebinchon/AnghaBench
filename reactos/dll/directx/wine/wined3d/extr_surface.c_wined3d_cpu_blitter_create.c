
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_blitter {int * next; int * ops; } ;


 int TRACE (char*,struct wined3d_blitter*) ;
 int cpu_blitter_ops ;
 struct wined3d_blitter* heap_alloc (int) ;

struct wined3d_blitter *wined3d_cpu_blitter_create(void)
{
    struct wined3d_blitter *blitter;

    if (!(blitter = heap_alloc(sizeof(*blitter))))
        return ((void*)0);

    TRACE("Created blitter %p.\n", blitter);

    blitter->ops = &cpu_blitter_ops;
    blitter->next = ((void*)0);

    return blitter;
}
