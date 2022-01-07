
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_sampler {int dummy; } ;
struct d3dx_parameter {int element_count; int bytes; int class; unsigned int member_count; size_t object_id; int type; struct d3dx_sampler* data; struct d3dx_parameter* members; } ;
struct d3dx_object {struct d3dx_parameter* param; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int UINT ;
typedef scalar_t__ HRESULT ;
 scalar_t__ D3D_OK ;
 scalar_t__ E_OUTOFMEMORY ;
 int FIXME (char*,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 struct d3dx_sampler* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,struct d3dx_sampler*) ;
 int TRACE (char*,size_t) ;
 int WARN (char*,...) ;
 scalar_t__ d3dx9_parse_sampler (struct d3dx9_base_effect*,struct d3dx_sampler*,char const*,char const**,struct d3dx_object*) ;
 int debug_d3dxparameter_class (int) ;
 int debug_d3dxparameter_type (int ) ;
 int read_dword (char const**,size_t*) ;

__attribute__((used)) static HRESULT d3dx9_parse_value(struct d3dx9_base_effect *base, struct d3dx_parameter *param,
        void *value, const char *data, const char **ptr, struct d3dx_object *objects)
{
    unsigned int i;
    HRESULT hr;
    UINT old_size = 0;

    if (param->element_count)
    {
        param->data = value;

        for (i = 0; i < param->element_count; ++i)
        {
            struct d3dx_parameter *member = &param->members[i];

            hr = d3dx9_parse_value(base, member, value ? (char *)value + old_size : ((void*)0), data, ptr, objects);
            if (hr != D3D_OK)
            {
                WARN("Failed to parse value %u\n", i);
                return hr;
            }

            old_size += member->bytes;
        }

        return D3D_OK;
    }

    switch(param->class)
    {
        case 143:
        case 141:
        case 145:
        case 146:
            param->data = value;
            break;

        case 142:
            param->data = value;

            for (i = 0; i < param->member_count; ++i)
            {
                struct d3dx_parameter *member = &param->members[i];

                hr = d3dx9_parse_value(base, member, (char *)value + old_size, data, ptr, objects);
                if (hr != D3D_OK)
                {
                    WARN("Failed to parse value %u\n", i);
                    return hr;
                }

                old_size += member->bytes;
            }
            break;

        case 144:
            switch (param->type)
            {
                case 134:
                case 133:
                case 132:
                case 131:
                case 130:
                case 129:
                case 140:
                case 128:
                    read_dword(ptr, &param->object_id);
                    TRACE("Id: %u\n", param->object_id);
                    objects[param->object_id].param = param;
                    param->data = value;
                    break;

                case 139:
                case 138:
                case 137:
                case 136:
                case 135:
                {
                    struct d3dx_sampler *sampler;

                    sampler = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*sampler));
                    if (!sampler)
                        return E_OUTOFMEMORY;

                    hr = d3dx9_parse_sampler(base, sampler, data, ptr, objects);
                    if (hr != D3D_OK)
                    {
                        HeapFree(GetProcessHeap(), 0, sampler);
                        WARN("Failed to parse sampler\n");
                        return hr;
                    }

                    param->data = sampler;
                    break;
                }

                default:
                    FIXME("Unhandled type %s\n", debug_d3dxparameter_type(param->type));
                    break;
            }
            break;

        default:
            FIXME("Unhandled class %s\n", debug_d3dxparameter_class(param->class));
            break;
    }

    return D3D_OK;
}
