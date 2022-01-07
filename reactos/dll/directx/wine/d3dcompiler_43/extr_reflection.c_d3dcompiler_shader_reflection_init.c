
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dxbc_section {int tag; int data_size; int data; } ;
struct dxbc {unsigned int count; struct dxbc_section* sections; } ;
struct TYPE_2__ {int * lpVtbl; } ;
struct d3dcompiler_shader_reflection {int refcount; int target; void* pcsg; void* osgn; void* isgn; int types; TYPE_1__ ID3D11ShaderReflection_iface; } ;
typedef int SIZE_T ;
typedef int HRESULT ;


 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int WARN (char*) ;
 int d3dcompiler_parse_rdef (struct d3dcompiler_shader_reflection*,int ,int ) ;
 int d3dcompiler_parse_shdr (struct d3dcompiler_shader_reflection*,int ,int ) ;
 int d3dcompiler_parse_signature (void*,struct dxbc_section*,int ) ;
 int d3dcompiler_parse_stat (struct d3dcompiler_shader_reflection*,int ,int ) ;
 int d3dcompiler_shader_reflection_type_compare ;
 int d3dcompiler_shader_reflection_vtbl ;
 int debugstr_an (char const*,int) ;
 int dxbc_destroy (struct dxbc*) ;
 int dxbc_parse (void const*,int ,struct dxbc*) ;
 int reflection_cleanup (struct d3dcompiler_shader_reflection*) ;
 int wine_rb_init (int *,int ) ;

__attribute__((used)) static HRESULT d3dcompiler_shader_reflection_init(struct d3dcompiler_shader_reflection *reflection,
        const void *data, SIZE_T data_size)
{
    struct dxbc src_dxbc;
    HRESULT hr;
    unsigned int i;

    reflection->ID3D11ShaderReflection_iface.lpVtbl = &d3dcompiler_shader_reflection_vtbl;
    reflection->refcount = 1;

    wine_rb_init(&reflection->types, d3dcompiler_shader_reflection_type_compare);

    hr = dxbc_parse(data, data_size, &src_dxbc);
    if (FAILED(hr))
    {
        WARN("Failed to parse reflection\n");
        return hr;
    }

    for (i = 0; i < src_dxbc.count; ++i)
    {
        struct dxbc_section *section = &src_dxbc.sections[i];

        switch (section->tag)
        {
            case 131:
                hr = d3dcompiler_parse_rdef(reflection, section->data, section->data_size);
                if (FAILED(hr))
                {
                    WARN("Failed to parse RDEF section.\n");
                    goto err_out;
                }
                break;

            case 135:
                reflection->isgn = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*reflection->isgn));
                if (!reflection->isgn)
                {
                    ERR("Failed to allocate ISGN memory.\n");
                    hr = E_OUTOFMEMORY;
                    goto err_out;
                }

                hr = d3dcompiler_parse_signature(reflection->isgn, section, reflection->target);
                if (FAILED(hr))
                {
                    WARN("Failed to parse section ISGN.\n");
                    goto err_out;
                }
                break;

            case 134:
            case 133:
                reflection->osgn = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*reflection->osgn));
                if (!reflection->osgn)
                {
                    ERR("Failed to allocate OSGN memory.\n");
                    hr = E_OUTOFMEMORY;
                    goto err_out;
                }

                hr = d3dcompiler_parse_signature(reflection->osgn, section, reflection->target);
                if (FAILED(hr))
                {
                    WARN("Failed to parse section OSGN.\n");
                    goto err_out;
                }
                break;

            case 132:
                reflection->pcsg = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*reflection->pcsg));
                if (!reflection->pcsg)
                {
                    ERR("Failed to allocate PCSG memory.\n");
                    hr = E_OUTOFMEMORY;
                    goto err_out;
                }

                hr = d3dcompiler_parse_signature(reflection->pcsg, section, reflection->target);
                if (FAILED(hr))
                {
                    WARN("Failed to parse section PCSG.\n");
                    goto err_out;
                }
                break;

            case 129:
            case 130:
                hr = d3dcompiler_parse_shdr(reflection, section->data, section->data_size);
                if (FAILED(hr))
                {
                    WARN("Failed to parse SHDR section.\n");
                    goto err_out;
                }
                break;

            case 128:
                hr = d3dcompiler_parse_stat(reflection, section->data, section->data_size);
                if (FAILED(hr))
                {
                    WARN("Failed to parse section STAT.\n");
                    goto err_out;
                }
                break;

            default:
                FIXME("Unhandled section %s!\n", debugstr_an((const char *)&section->tag, 4));
                break;
        }
    }

    dxbc_destroy(&src_dxbc);

    return hr;

err_out:
    reflection_cleanup(reflection);
    dxbc_destroy(&src_dxbc);

    return hr;
}
