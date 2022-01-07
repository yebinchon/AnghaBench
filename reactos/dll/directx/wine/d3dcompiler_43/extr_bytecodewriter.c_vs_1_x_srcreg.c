
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int swizzle; } ;
struct shader_reg {int type; int srcmod; TYPE_3__ u; TYPE_2__* rel_reg; int regnum; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {void* state; } ;
struct TYPE_4__ {int const swizzle; } ;
struct TYPE_5__ {int const type; TYPE_1__ u; int regnum; } ;
typedef int DWORD ;
 int BWRITERSP_WRITEMASK_0 ;
 int BWRITERSP_WRITEMASK_1 ;
 int BWRITERSP_WRITEMASK_2 ;
 int BWRITERSP_WRITEMASK_3 ;




 int D3DVS_ADDRESSMODE_MASK ;
 int D3DVS_ADDRMODE_RELATIVE ;
 int D3DVS_SWIZZLE_MASK ;
 void* E_INVALIDARG ;
 int FIXME (char*,int) ;
 int WARN (char*) ;
 int d3d9_srcmod (int ) ;
 int d3d9_swizzle (int ) ;
 int d3dsp_register (int,int ) ;
 int map_vs_output (struct bc_writer*,int ,int,int*) ;
 int put_dword (struct bytecode_buffer*,int) ;

__attribute__((used)) static void vs_1_x_srcreg(struct bc_writer *This, const struct shader_reg *reg,
                          struct bytecode_buffer *buffer) {
    DWORD token = (1u << 31);
    DWORD has_swizzle;
    DWORD component;

    switch(reg->type) {
        case 134:



            switch(reg->u.swizzle) {
                case 130:
                    component = BWRITERSP_WRITEMASK_0;
                    break;
                case 129:
                    component = BWRITERSP_WRITEMASK_1;
                    break;
                case 128:
                    component = BWRITERSP_WRITEMASK_2;
                    break;
                case 131:
                    component = BWRITERSP_WRITEMASK_3;
                    break;
                default:
                    component = 0;
            }
            token |= map_vs_output(This, reg->regnum, component, &has_swizzle);
            break;

        case 133:
        case 137:



            FIXME("Unexpected register type %u\n", reg->type);

        case 135:
        case 132:
        case 136:
        case 138:
            token |= d3dsp_register( reg->type, reg->regnum );
            if(reg->rel_reg) {
                if(reg->rel_reg->type != 138 ||
                   reg->rel_reg->regnum != 0 ||
                   reg->rel_reg->u.swizzle != 130) {
                    WARN("Relative addressing in vs_1_x is only allowed with a0.x\n");
                    This->state = E_INVALIDARG;
                    return;
                }
                token |= D3DVS_ADDRMODE_RELATIVE & D3DVS_ADDRESSMODE_MASK;
            }
            break;

        default:
            WARN("Invalid register type for 1.x vshader\n");
            This->state = E_INVALIDARG;
            return;
    }

    token |= d3d9_swizzle(reg->u.swizzle) & D3DVS_SWIZZLE_MASK;

    token |= d3d9_srcmod(reg->srcmod);
    put_dword(buffer, token);
}
