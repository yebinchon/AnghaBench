
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int swizzle; } ;
struct shader_reg {int type; int srcmod; TYPE_1__ u; int regnum; scalar_t__ rel_reg; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {void* state; int version; } ;
typedef int DWORD ;


 int BWRITERPS_VERSION (int,int) ;
 int D3DSPR_PREDICATE ;
 int D3DVS_SWIZZLE_MASK ;
 void* E_INVALIDARG ;
 int WARN (char*,...) ;
 int d3d9_register (int) ;
 int d3d9_srcmod (int ) ;
 int d3d9_swizzle (int ) ;
 int d3dsp_register (int,int ) ;
 int map_ps_input (struct bc_writer*,struct shader_reg const*) ;
 int put_dword (struct bytecode_buffer*,int) ;

__attribute__((used)) static void ps_2_srcreg(struct bc_writer *This,
                        const struct shader_reg *reg,
                        struct bytecode_buffer *buffer) {
    DWORD token = (1u << 31);
    DWORD d3d9reg;
    if(reg->rel_reg) {
        WARN("Relative addressing not supported in <= ps_3_0\n");
        This->state = E_INVALIDARG;
        return;
    }

    switch(reg->type) {
        case 132:
            token |= map_ps_input(This, reg);
            break;


        case 128:
        case 136:
        case 137:
        case 135:
        case 134:
        case 129:
        case 131:
        case 133:
            d3d9reg = d3d9_register(reg->type);
            token |= d3dsp_register( d3d9reg, reg->regnum );
            break;

        case 130:
            if(This->version != BWRITERPS_VERSION(2, 1)){
                WARN("Predicate register not supported in ps_2_0\n");
                This->state = E_INVALIDARG;
            }
            if(reg->regnum) {
                WARN("Predicate register with regnum %u not supported\n",
                     reg->regnum);
                This->state = E_INVALIDARG;
            }
            token |= d3dsp_register( D3DSPR_PREDICATE, 0 );
            break;

        default:
            WARN("Invalid register type for ps_2_0 shader\n");
            This->state = E_INVALIDARG;
            return;
    }

    token |= d3d9_swizzle(reg->u.swizzle) & D3DVS_SWIZZLE_MASK;

    token |= d3d9_srcmod(reg->srcmod);
    put_dword(buffer, token);
}
