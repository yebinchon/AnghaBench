
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
 int BWRITERVS_VERSION (int,int) ;
 int D3DSPR_ADDR ;
 int D3DSPR_PREDICATE ;
 int D3DSP_DSTSHIFT_MASK ;
 int D3DSP_DSTSHIFT_SHIFT ;
 void* E_INVALIDARG ;
 int FIXME (char*,int) ;
 int TRUE ;
 int WARN (char*) ;
 int d3d9_dstmod (int) ;
 int d3d9_writemask (int ) ;
 int d3dsp_register (int,int ) ;
 int map_vs_output (struct bc_writer*,int ,int ,int*) ;
 int put_dword (struct bytecode_buffer*,int) ;

__attribute__((used)) static void vs_12_dstreg(struct bc_writer *This, const struct shader_reg *reg,
                         struct bytecode_buffer *buffer,
                         DWORD shift, DWORD mod) {
    DWORD token = (1u << 31);
    DWORD has_wmask;

    if(reg->rel_reg) {
        WARN("Relative addressing not supported for destination registers\n");
        This->state = E_INVALIDARG;
        return;
    }

    switch(reg->type) {
        case 131:
            token |= map_vs_output(This, reg->regnum, reg->u.writemask, &has_wmask);
            break;

        case 129:
        case 134:



            FIXME("Unexpected register type %u\n", reg->type);

        case 132:
        case 128:
        case 133:
            token |= d3dsp_register( reg->type, reg->regnum );
            has_wmask = TRUE;
            break;

        case 135:
            if(reg->regnum != 0) {
                WARN("Only a0 exists\n");
                This->state = E_INVALIDARG;
                return;
            }
            token |= d3dsp_register( D3DSPR_ADDR, 0 );
            has_wmask = TRUE;
            break;

        case 130:
            if(This->version != BWRITERVS_VERSION(2, 1)){
                WARN("Predicate register is allowed only in vs_2_x\n");
                This->state = E_INVALIDARG;
                return;
            }
            if(reg->regnum != 0) {
                WARN("Only predicate register p0 exists\n");
                This->state = E_INVALIDARG;
                return;
            }
            token |= d3dsp_register( D3DSPR_PREDICATE, 0 );
            has_wmask = TRUE;
            break;

        default:
            WARN("Invalid register type for 1.x-2.x vertex shader\n");
            This->state = E_INVALIDARG;
            return;
    }





    token |= (shift << D3DSP_DSTSHIFT_SHIFT) & D3DSP_DSTSHIFT_MASK;
    token |= d3d9_dstmod(mod);

    if(has_wmask) {
        token |= d3d9_writemask(reg->u.writemask);
    }
    put_dword(buffer, token);
}
