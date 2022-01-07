
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int type; unsigned int major; int minor; } ;
struct wined3d_shader_reg_maps {TYPE_4__ shader_version; } ;
struct wined3d_shader_frontend {int (* shader_init ) (int ,int ,int *) ;} ;
struct wined3d_shader {int output_signature; int input_signature; int frontend_data; int functionLength; int function; struct wined3d_shader_frontend* frontend; TYPE_2__* device; struct wined3d_shader_reg_maps reg_maps; } ;
struct TYPE_7__ {unsigned int vs_version; unsigned int hs_version; unsigned int ds_version; unsigned int gs_version; unsigned int ps_version; unsigned int cs_version; } ;
struct wined3d_d3d_info {TYPE_3__ limits; } ;
typedef enum wined3d_shader_type { ____Placeholder_wined3d_shader_type } wined3d_shader_type ;
struct TYPE_6__ {TYPE_1__* adapter; } ;
struct TYPE_5__ {struct wined3d_d3d_info d3d_info; } ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int TRACE (char*,struct wined3d_shader*,int ,int,unsigned int) ;
 scalar_t__ TRACE_ON (int ) ;
 int WARN (char*,unsigned int,...) ;
 int WINED3DERR_INVALIDCALL ;
 int WINED3D_OK ;






 int d3d_shader ;
 int shader_get_registers_used (struct wined3d_shader*,struct wined3d_shader_frontend const*,struct wined3d_shader_reg_maps*,int *,int *,int ) ;
 int shader_trace_init (struct wined3d_shader_frontend const*,int ) ;
 int stub1 (int ,int ,int *) ;

__attribute__((used)) static HRESULT shader_set_function(struct wined3d_shader *shader, DWORD float_const_count,
        enum wined3d_shader_type type, unsigned int max_version)
{
    struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;
    const struct wined3d_shader_frontend *fe;
    HRESULT hr;
    unsigned int backend_version;
    const struct wined3d_d3d_info *d3d_info = &shader->device->adapter->d3d_info;

    TRACE("shader %p, float_const_count %u, type %#x, max_version %u.\n",
            shader, float_const_count, type, max_version);

    fe = shader->frontend;
    if (!(shader->frontend_data = fe->shader_init(shader->function,
            shader->functionLength, &shader->output_signature)))
    {
        FIXME("Failed to initialize frontend.\n");
        return WINED3DERR_INVALIDCALL;
    }


    if (TRACE_ON(d3d_shader))
        shader_trace_init(fe, shader->frontend_data);


    if (FAILED(hr = shader_get_registers_used(shader, fe, reg_maps, &shader->input_signature,
            &shader->output_signature, float_const_count)))
        return hr;

    if (reg_maps->shader_version.type != type)
    {
        WARN("Wrong shader type %d.\n", reg_maps->shader_version.type);
        return WINED3DERR_INVALIDCALL;
    }
    if (reg_maps->shader_version.major > max_version)
    {
        WARN("Shader version %d not supported by this D3D API version.\n", reg_maps->shader_version.major);
        return WINED3DERR_INVALIDCALL;
    }
    switch (type)
    {
        case 128:
            backend_version = d3d_info->limits.vs_version;
            break;
        case 130:
            backend_version = d3d_info->limits.hs_version;
            break;
        case 132:
            backend_version = d3d_info->limits.ds_version;
            break;
        case 131:
            backend_version = d3d_info->limits.gs_version;
            break;
        case 129:
            backend_version = d3d_info->limits.ps_version;
            break;
        case 133:
            backend_version = d3d_info->limits.cs_version;
            break;
        default:
            FIXME("No backend version-checking for this shader type.\n");
            backend_version = 0;
    }
    if (reg_maps->shader_version.major > backend_version)
    {
        WARN("Shader version %d.%d not supported by your GPU with the current shader backend.\n",
                reg_maps->shader_version.major, reg_maps->shader_version.minor);
        return WINED3DERR_INVALIDCALL;
    }

    return WINED3D_OK;
}
