
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ddraw {int dummy; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_4__ {int * lpVtbl; } ;
struct d3d_material {int ref; struct ddraw* ddraw; TYPE_3__ IDirect3DMaterial_iface; TYPE_2__ IDirect3DMaterial2_iface; TYPE_1__ IDirect3DMaterial3_iface; } ;


 int d3d_material1_vtbl ;
 int d3d_material2_vtbl ;
 int d3d_material3_vtbl ;
 struct d3d_material* heap_alloc_zero (int) ;

struct d3d_material *d3d_material_create(struct ddraw *ddraw)
{
    struct d3d_material *material;

    if (!(material = heap_alloc_zero(sizeof(*material))))
        return ((void*)0);

    material->IDirect3DMaterial3_iface.lpVtbl = &d3d_material3_vtbl;
    material->IDirect3DMaterial2_iface.lpVtbl = &d3d_material2_vtbl;
    material->IDirect3DMaterial_iface.lpVtbl = &d3d_material1_vtbl;
    material->ref = 1;
    material->ddraw = ddraw;

    return material;
}
