
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct d3d9_query {int refcount; int data_size; int * parent_device; int wined3d_query; TYPE_1__ IDirect3DQuery9_iface; } ;
struct d3d9_device {int IDirect3DDevice9Ex_iface; int wined3d_device; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int D3DQUERYTYPE ;
typedef int BOOL ;


 int D3DERR_NOTAVAILABLE ;
 int D3DQUERYTYPE_MEMORYPRESSURE ;
 int D3DQUERYTYPE_OCCLUSION ;
 int D3DQUERYTYPE_TIMESTAMPDISJOINT ;
 int D3D_OK ;
 scalar_t__ FAILED (int) ;
 int FIXME (char*,int) ;
 int IDirect3DDevice9Ex_AddRef (int *) ;
 int WARN (char*,int) ;
 int d3d9_null_wined3d_parent_ops ;
 int d3d9_query_vtbl ;
 int wined3d_mutex_lock () ;
 int wined3d_mutex_unlock () ;
 int wined3d_query_create (int ,int,struct d3d9_query*,int *,int *) ;
 int wined3d_query_get_data_size (int ) ;

HRESULT query_init(struct d3d9_query *query, struct d3d9_device *device, D3DQUERYTYPE type)
{
    HRESULT hr;

    if (type > D3DQUERYTYPE_MEMORYPRESSURE)
    {
        if (type == 0x16)
            FIXME("Undocumented query %#x created.\n", type);
        else
            WARN("Invalid query type %#x.\n", type);

        return D3DERR_NOTAVAILABLE;
    }

    query->IDirect3DQuery9_iface.lpVtbl = &d3d9_query_vtbl;
    query->refcount = 1;

    wined3d_mutex_lock();
    if (FAILED(hr = wined3d_query_create(device->wined3d_device, type,
            query, &d3d9_null_wined3d_parent_ops, &query->wined3d_query)))
    {
        wined3d_mutex_unlock();
        WARN("Failed to create wined3d query, hr %#x.\n", hr);
        return hr;
    }

    if (type == D3DQUERYTYPE_OCCLUSION)
        query->data_size = sizeof(DWORD);
    else if (type == D3DQUERYTYPE_TIMESTAMPDISJOINT)
        query->data_size = sizeof(BOOL);
    else
        query->data_size = wined3d_query_get_data_size(query->wined3d_query);
    wined3d_mutex_unlock();

    query->parent_device = &device->IDirect3DDevice9Ex_iface;
    IDirect3DDevice9Ex_AddRef(query->parent_device);

    return D3D_OK;
}
