
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int class; scalar_t__ bytes; } ;
struct d3dx_object {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef scalar_t__ UINT ;
typedef scalar_t__ HRESULT ;
 scalar_t__ D3D_OK ;
 int ERR (char*) ;
 scalar_t__ E_OUTOFMEMORY ;
 int FIXME (char*,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,void*) ;
 int TRACE (char*,scalar_t__) ;
 int WARN (char*) ;
 scalar_t__ d3dx9_parse_value (struct d3dx9_base_effect*,struct d3dx_parameter*,void*,char const*,char const**,struct d3dx_object*) ;
 int debug_d3dxparameter_class (int) ;
 scalar_t__ debugstr_an (char const*,scalar_t__) ;
 int memcpy (void*,char const*,scalar_t__) ;

__attribute__((used)) static HRESULT d3dx9_parse_init_value(struct d3dx9_base_effect *base, struct d3dx_parameter *param,
        const char *data, const char *ptr, struct d3dx_object *objects)
{
    UINT size = param->bytes;
    HRESULT hr;
    void *value = ((void*)0);

    TRACE("param size: %u\n", size);

    if (size)
    {
        value = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, size);
        if (!value)
        {
            ERR("Failed to allocate data memory.\n");
            return E_OUTOFMEMORY;
        }

        switch(param->class)
        {
            case 131:
                break;

            case 130:
            case 128:
            case 132:
            case 133:
            case 129:
                TRACE("Data: %s.\n", debugstr_an(ptr, size));
                memcpy(value, ptr, size);
                break;

            default:
                FIXME("Unhandled class %s\n", debug_d3dxparameter_class(param->class));
                break;
        }
    }

    hr = d3dx9_parse_value(base, param, value, data, &ptr, objects);
    if (hr != D3D_OK)
    {
        WARN("Failed to parse value\n");
        HeapFree(GetProcessHeap(), 0, value);
        return hr;
    }

    return D3D_OK;
}
