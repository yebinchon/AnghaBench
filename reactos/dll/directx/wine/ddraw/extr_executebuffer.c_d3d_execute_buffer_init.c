
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int dwFlags; scalar_t__ dwBufferSize; int * lpData; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct d3d_execute_buffer {int ref; TYPE_3__ desc; int need_free; struct d3d_device* d3ddev; TYPE_1__ IDirect3DExecuteBuffer_iface; } ;
struct d3d_device {int dummy; } ;
struct TYPE_7__ {int dwSize; } ;
typedef int HRESULT ;
typedef TYPE_2__ D3DEXECUTEBUFFERDESC ;


 int D3DDEB_BUFSIZE ;
 int D3DDEB_LPDATA ;
 int D3D_OK ;
 int DDERR_OUTOFMEMORY ;
 int ERR (char*) ;
 int TRUE ;
 int d3d_execute_buffer_vtbl ;
 int * heap_alloc_zero (scalar_t__) ;
 int memcpy (TYPE_3__*,TYPE_2__*,int ) ;

HRESULT d3d_execute_buffer_init(struct d3d_execute_buffer *execute_buffer,
        struct d3d_device *device, D3DEXECUTEBUFFERDESC *desc)
{
    execute_buffer->IDirect3DExecuteBuffer_iface.lpVtbl = &d3d_execute_buffer_vtbl;
    execute_buffer->ref = 1;
    execute_buffer->d3ddev = device;


    memcpy(&execute_buffer->desc, desc, desc->dwSize);


    if (!(execute_buffer->desc.dwFlags & D3DDEB_LPDATA))
        execute_buffer->desc.lpData = ((void*)0);


    if (!(execute_buffer->desc.dwFlags & D3DDEB_BUFSIZE))
        execute_buffer->desc.dwBufferSize = 0;


    if (!execute_buffer->desc.lpData && execute_buffer->desc.dwBufferSize)
    {
        execute_buffer->need_free = TRUE;
        if (!(execute_buffer->desc.lpData = heap_alloc_zero(execute_buffer->desc.dwBufferSize)))
        {
            ERR("Failed to allocate execute buffer data.\n");
            return DDERR_OUTOFMEMORY;
        }
    }

    execute_buffer->desc.dwFlags |= D3DDEB_LPDATA;

    return D3D_OK;
}
