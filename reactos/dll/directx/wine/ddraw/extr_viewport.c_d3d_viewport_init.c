
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ddraw {int dummy; } ;
struct TYPE_2__ {int * lpVtbl; } ;
struct d3d_viewport {int ref; int use_vp2; int light_list; struct ddraw* ddraw; TYPE_1__ IDirect3DViewport3_iface; } ;


 int d3d_viewport_vtbl ;
 int list_init (int *) ;

void d3d_viewport_init(struct d3d_viewport *viewport, struct ddraw *ddraw)
{
    viewport->IDirect3DViewport3_iface.lpVtbl = &d3d_viewport_vtbl;
    viewport->ref = 1;
    viewport->ddraw = ddraw;
    viewport->use_vp2 = 0xff;
    list_init(&viewport->light_list);
}
