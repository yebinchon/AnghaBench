
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_version {int dummy; } ;
struct wined3d_shader_tex_mx {scalar_t__ current_row; } ;
struct wined3d_shader_reg_maps {int dummy; } ;
struct wined3d_shader_parser_state {int in_subroutine; scalar_t__ current_loop_reg; scalar_t__ current_loop_depth; } ;
struct wined3d_shader_instruction {scalar_t__ handler_idx; scalar_t__ predicate; struct wined3d_shader_context* ctx; } ;
struct wined3d_shader_frontend {int (* shader_read_instruction ) (void*,int const**,struct wined3d_shader_instruction*) ;int (* shader_is_end ) (void*,int const**) ;int (* shader_read_header ) (void*,int const**,struct wined3d_shader_version*) ;} ;
struct wined3d_shader_context {void* backend_data; struct wined3d_shader_parser_state* state; struct wined3d_shader_tex_mx* tex_mx; struct wined3d_string_buffer* buffer; struct wined3d_shader_reg_maps const* reg_maps; int * gl_info; struct wined3d_shader const* shader; } ;
struct wined3d_shader {void* frontend_data; struct wined3d_shader_frontend* frontend; struct wined3d_device* device; } ;
struct wined3d_device {TYPE_2__* shader_backend; TYPE_1__* adapter; } ;
struct TYPE_4__ {int (* shader_handle_instruction ) (struct wined3d_shader_instruction*) ;} ;
struct TYPE_3__ {int gl_info; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int FALSE ;
 int FIXME (char*) ;
 int WARN (char*) ;
 int WINED3DERR_INVALIDCALL ;
 scalar_t__ WINED3DSIH_TABLE_SIZE ;
 int WINED3D_OK ;
 int stub1 (void*,int const**,struct wined3d_shader_version*) ;
 int stub2 (void*,int const**) ;
 int stub3 (void*,int const**,struct wined3d_shader_instruction*) ;
 int stub4 (struct wined3d_shader_instruction*) ;

HRESULT shader_generate_code(const struct wined3d_shader *shader, struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_reg_maps *reg_maps, void *backend_ctx,
        const DWORD *start, const DWORD *end)
{
    struct wined3d_device *device = shader->device;
    const struct wined3d_shader_frontend *fe = shader->frontend;
    void *fe_data = shader->frontend_data;
    struct wined3d_shader_version shader_version;
    struct wined3d_shader_parser_state state;
    struct wined3d_shader_instruction ins;
    struct wined3d_shader_tex_mx tex_mx;
    struct wined3d_shader_context ctx;
    const DWORD *ptr;


    tex_mx.current_row = 0;
    state.current_loop_depth = 0;
    state.current_loop_reg = 0;
    state.in_subroutine = FALSE;

    ctx.shader = shader;
    ctx.gl_info = &device->adapter->gl_info;
    ctx.reg_maps = reg_maps;
    ctx.buffer = buffer;
    ctx.tex_mx = &tex_mx;
    ctx.state = &state;
    ctx.backend_data = backend_ctx;
    ins.ctx = &ctx;

    fe->shader_read_header(fe_data, &ptr, &shader_version);
    if (start)
        ptr = start;

    while (!fe->shader_is_end(fe_data, &ptr) && ptr != end)
    {

        fe->shader_read_instruction(fe_data, &ptr, &ins);


        if (ins.handler_idx == WINED3DSIH_TABLE_SIZE)
        {
            WARN("Encountered unrecognised or invalid instruction.\n");
            return WINED3DERR_INVALIDCALL;
        }

        if (ins.predicate)
            FIXME("Predicates not implemented.\n");


        device->shader_backend->shader_handle_instruction(&ins);
    }

    return WINED3D_OK;
}
