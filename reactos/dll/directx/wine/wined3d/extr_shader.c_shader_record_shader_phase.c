
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wined3d_shader_phase {int const* start; int const* end; } ;
struct wined3d_shader_instruction {int handler_idx; } ;
struct TYPE_8__ {int join_count; struct wined3d_shader_phase* join; int join_size; int fork_count; struct wined3d_shader_phase* fork; int fork_size; struct wined3d_shader_phase* control_point; } ;
struct TYPE_9__ {TYPE_3__ phases; } ;
struct TYPE_10__ {TYPE_4__ hs; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_1__ shader_version; } ;
struct wined3d_shader {TYPE_5__ u; TYPE_2__ reg_maps; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int ERR (char*,scalar_t__) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FIXME (char*) ;



 int WINED3D_OK ;
 scalar_t__ WINED3D_SHADER_TYPE_HULL ;
 scalar_t__ debug_d3dshaderinstructionhandler (int) ;
 struct wined3d_shader_phase* heap_alloc_zero (int) ;
 int heap_free (struct wined3d_shader_phase*) ;
 int wined3d_array_reserve (void**,int *,int ,int) ;

__attribute__((used)) static HRESULT shader_record_shader_phase(struct wined3d_shader *shader,
        struct wined3d_shader_phase **current_phase, const struct wined3d_shader_instruction *ins,
        const DWORD *current_instruction_ptr, const DWORD *previous_instruction_ptr)
{
    struct wined3d_shader_phase *phase;

    if ((phase = *current_phase))
    {
        phase->end = previous_instruction_ptr;
        *current_phase = ((void*)0);
    }

    if (shader->reg_maps.shader_version.type != WINED3D_SHADER_TYPE_HULL)
    {
        ERR("Unexpected shader type %#x.\n", shader->reg_maps.shader_version.type);
        return E_FAIL;
    }

    switch (ins->handler_idx)
    {
        case 130:
            if (shader->u.hs.phases.control_point)
            {
                FIXME("Multiple control point phases.\n");
                heap_free(shader->u.hs.phases.control_point);
            }
            if (!(shader->u.hs.phases.control_point = heap_alloc_zero(sizeof(*shader->u.hs.phases.control_point))))
                return E_OUTOFMEMORY;
            phase = shader->u.hs.phases.control_point;
            break;
        case 129:
            if (!wined3d_array_reserve((void **)&shader->u.hs.phases.fork,
                    &shader->u.hs.phases.fork_size, shader->u.hs.phases.fork_count + 1,
                    sizeof(*shader->u.hs.phases.fork)))
                return E_OUTOFMEMORY;
            phase = &shader->u.hs.phases.fork[shader->u.hs.phases.fork_count++];
            break;
        case 128:
            if (!wined3d_array_reserve((void **)&shader->u.hs.phases.join,
                    &shader->u.hs.phases.join_size, shader->u.hs.phases.join_count + 1,
                    sizeof(*shader->u.hs.phases.join)))
                return E_OUTOFMEMORY;
            phase = &shader->u.hs.phases.join[shader->u.hs.phases.join_count++];
            break;
        default:
            ERR("Unexpected opcode %s.\n", debug_d3dshaderinstructionhandler(ins->handler_idx));
            return E_FAIL;
    }

    phase->start = current_instruction_ptr;
    *current_phase = phase;

    return WINED3D_OK;
}
