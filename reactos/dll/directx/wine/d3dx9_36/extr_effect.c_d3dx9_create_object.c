
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3dx_parameter {int type; scalar_t__ data; } ;
struct d3dx_object {void* creation_failed; int data; int size; struct d3dx_parameter* param; } ;
struct d3dx9_base_effect {TYPE_1__* effect; } ;
struct IDirect3DDevice9 {int dummy; } ;
struct TYPE_2__ {struct IDirect3DDevice9* device; } ;
typedef int IDirect3DVertexShader9 ;
typedef int IDirect3DPixelShader9 ;
typedef int HRESULT ;





 int D3D_OK ;
 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 int FAILED (int ) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int ) ;
 int IDirect3DDevice9_CreatePixelShader (struct IDirect3DDevice9*,int ,int **) ;
 int IDirect3DDevice9_CreateVertexShader (struct IDirect3DDevice9*,int ,int **) ;
 void* TRUE ;
 int WARN (char*) ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static HRESULT d3dx9_create_object(struct d3dx9_base_effect *base, struct d3dx_object *object)
{
    struct d3dx_parameter *param = object->param;
    struct IDirect3DDevice9 *device = base->effect->device;
    HRESULT hr;

    if (*(char **)param->data)
        ERR("Parameter data already allocated.\n");

    switch (param->type)
    {
        case 129:
            *(char **)param->data = HeapAlloc(GetProcessHeap(), 0, object->size);
            if (!*(char **)param->data)
            {
                ERR("Out of memory.\n");
                return E_OUTOFMEMORY;
            }
            memcpy(*(char **)param->data, object->data, object->size);
            break;
        case 128:
            if (FAILED(hr = IDirect3DDevice9_CreateVertexShader(device, object->data,
                    (IDirect3DVertexShader9 **)param->data)))
            {
                WARN("Failed to create vertex shader.\n");
                object->creation_failed = TRUE;
            }
            break;
        case 130:
            if (FAILED(hr = IDirect3DDevice9_CreatePixelShader(device, object->data,
                    (IDirect3DPixelShader9 **)param->data)))
            {
                WARN("Failed to create pixel shader.\n");
                object->creation_failed = TRUE;
            }
            break;
        default:
            break;
    }
    return D3D_OK;
}
