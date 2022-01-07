
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d {int ref; int flags; int adapter_count; int * adapters; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int E_FAIL ;
 int TRACE (char*) ;
 int WARN (char*) ;
 int WINED3D_NO3D ;
 int WINED3D_OK ;
 int wined3d_adapter_init (int *,int ,int) ;
 int wined3d_adapter_init_nogl (int *,int ) ;

HRESULT wined3d_init(struct wined3d *wined3d, DWORD flags)
{
    BOOL ret;

    wined3d->ref = 1;
    wined3d->flags = flags;

    TRACE("Initializing adapters.\n");

    if (flags & WINED3D_NO3D)
        ret = wined3d_adapter_init_nogl(&wined3d->adapters[0], 0);
    else
        ret = wined3d_adapter_init(&wined3d->adapters[0], 0, flags);
    if (!ret)
    {
        WARN("Failed to initialize adapter.\n");
        return E_FAIL;
    }
    wined3d->adapter_count = 1;

    return WINED3D_OK;
}
