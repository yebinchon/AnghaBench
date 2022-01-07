
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int swizzle; } ;
struct shader_reg {int type; scalar_t__ srcmod; TYPE_1__ u; int regnum; scalar_t__ rel_reg; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {void* state; } ;
typedef int DWORD ;





 scalar_t__ BWRITERSPSM_ABS ;
 scalar_t__ BWRITERSPSM_ABSNEG ;
 scalar_t__ BWRITERSPSM_NOT ;
 int D3DVS_SWIZZLE_MASK ;
 void* E_INVALIDARG ;
 int WARN (char*,...) ;
 int d3d9_srcmod (scalar_t__) ;
 int d3d9_swizzle (int ) ;
 int d3dsp_register (int,int ) ;
 int map_ps_input (struct bc_writer*,struct shader_reg const*) ;
 int put_dword (struct bytecode_buffer*,int) ;

__attribute__((used)) static void ps_1_4_srcreg(struct bc_writer *This, const struct shader_reg *reg,
                          struct bytecode_buffer *buffer) {
    DWORD token = (1u << 31);
    if(reg->rel_reg) {
        WARN("Relative addressing not supported in <= ps_3_0\n");
        This->state = E_INVALIDARG;
        return;
    }

    switch(reg->type) {
        case 129:
            token |= map_ps_input(This, reg);
            break;


        case 128:
        case 130:
            token |= d3dsp_register( reg->type, reg->regnum );
            break;

        default:
            WARN("Invalid register type for ps_1_4 shader\n");
            This->state = E_INVALIDARG;
            return;
    }

    token |= d3d9_swizzle(reg->u.swizzle) & D3DVS_SWIZZLE_MASK;

    if(reg->srcmod == BWRITERSPSM_ABS || reg->srcmod == BWRITERSPSM_ABSNEG ||
       reg->srcmod == BWRITERSPSM_NOT) {
        WARN("Invalid source modifier %u for ps_1_4\n", reg->srcmod);
        This->state = E_INVALIDARG;
        return;
    }
    token |= d3d9_srcmod(reg->srcmod);
    put_dword(buffer, token);
}
