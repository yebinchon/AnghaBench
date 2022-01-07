
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int writemask; } ;
struct shader_reg {int type; TYPE_1__ u; int regnum; scalar_t__ rel_reg; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {void* state; int version; } ;
typedef int DWORD ;


 int BWRITERPS_VERSION (int,int) ;





 int D3DSPR_PREDICATE ;
 int D3DSP_DSTSHIFT_MASK ;
 int D3DSP_DSTSHIFT_SHIFT ;
 void* E_INVALIDARG ;
 int WARN (char*) ;
 int d3d9_dstmod (int) ;
 int d3d9_register (int) ;
 int d3d9_writemask (int ) ;
 int d3dsp_register (int,int ) ;
 int map_ps_input (struct bc_writer*,struct shader_reg const*) ;
 int put_dword (struct bytecode_buffer*,int) ;

__attribute__((used)) static void ps_2_0_dstreg(struct bc_writer *This,
                          const struct shader_reg *reg,
                          struct bytecode_buffer *buffer,
                          DWORD shift, DWORD mod) {
    DWORD token = (1u << 31);
    DWORD d3d9reg;

    if(reg->rel_reg) {
        WARN("Relative addressing not supported for destination registers\n");
        This->state = E_INVALIDARG;
        return;
    }

    switch(reg->type) {
        case 128:
        case 132:
        case 131:
            d3d9reg = d3d9_register(reg->type);
            token |= d3dsp_register( d3d9reg, reg->regnum );
            break;

        case 129:
            if(This->version != BWRITERPS_VERSION(2, 1)){
                WARN("Predicate register not supported in ps_2_0\n");
                This->state = E_INVALIDARG;
            }
            token |= d3dsp_register( D3DSPR_PREDICATE, reg->regnum );
            break;


        case 130:
            token |= map_ps_input(This, reg);
            break;

        default:
            WARN("Invalid dest register type for 2.x pshader\n");
            This->state = E_INVALIDARG;
            return;
    }

    token |= (shift << D3DSP_DSTSHIFT_SHIFT) & D3DSP_DSTSHIFT_MASK;
    token |= d3d9_dstmod(mod);

    token |= d3d9_writemask(reg->u.writemask);
    put_dword(buffer, token);
}
