
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct d3d8 {int refcount; int wined3d; TYPE_1__ IDirect3D8_iface; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int WINED3D_HANDLE_RESTORE ;
 int WINED3D_LEGACY_CUBEMAP_FILTERING ;
 int WINED3D_LEGACY_DEPTH_BIAS ;
 int WINED3D_LEGACY_UNBOUND_RESOURCE_COLOR ;
 int WINED3D_LIMIT_VIEWPORT ;
 int WINED3D_NO_PRIMITIVE_RESTART ;
 int WINED3D_PIXEL_CENTER_INTEGER ;
 int WINED3D_VIDMEM_ACCOUNTING ;
 int d3d8_vtbl ;
 int wined3d_create (int) ;
 int wined3d_mutex_lock () ;
 int wined3d_mutex_unlock () ;

BOOL d3d8_init(struct d3d8 *d3d8)
{
    DWORD flags = WINED3D_LEGACY_DEPTH_BIAS | WINED3D_VIDMEM_ACCOUNTING
            | WINED3D_HANDLE_RESTORE | WINED3D_PIXEL_CENTER_INTEGER
            | WINED3D_LEGACY_UNBOUND_RESOURCE_COLOR | WINED3D_NO_PRIMITIVE_RESTART
            | WINED3D_LEGACY_CUBEMAP_FILTERING | WINED3D_LIMIT_VIEWPORT;

    d3d8->IDirect3D8_iface.lpVtbl = &d3d8_vtbl;
    d3d8->refcount = 1;

    wined3d_mutex_lock();
    d3d8->wined3d = wined3d_create(flags);
    wined3d_mutex_unlock();
    if (!d3d8->wined3d)
        return FALSE;

    return TRUE;
}
