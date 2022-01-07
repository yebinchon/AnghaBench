
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct ID3DXBufferImpl {int ref; int buffer; int size; TYPE_1__ ID3DXBuffer_iface; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int D3D_OK ;
 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HeapAlloc (int ,int ,int ) ;
 int ID3DXBufferImpl_Vtbl ;

__attribute__((used)) static HRESULT d3dx9_buffer_init(struct ID3DXBufferImpl *buffer, DWORD size)
{
    buffer->ID3DXBuffer_iface.lpVtbl = &ID3DXBufferImpl_Vtbl;
    buffer->ref = 1;
    buffer->size = size;

    buffer->buffer = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, size);
    if (!buffer->buffer)
    {
        ERR("Failed to allocate buffer memory\n");
        return E_OUTOFMEMORY;
    }

    return D3D_OK;
}
