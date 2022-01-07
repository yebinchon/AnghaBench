
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int swizzle; } ;
struct shader_reg {int type; struct shader_reg* rel_reg; int srcmod; TYPE_1__ u; int regnum; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {void* state; int version; } ;
typedef int DWORD ;
 int BWRITERSP_WRITEMASK_0 ;
 int BWRITERSP_WRITEMASK_1 ;
 int BWRITERSP_WRITEMASK_2 ;
 int BWRITERSP_WRITEMASK_3 ;




 int BWRITERVS_VERSION (int,int) ;
 int D3DSPR_LOOP ;
 int D3DSPR_PREDICATE ;
 int D3DVS_ADDRESSMODE_MASK ;
 int D3DVS_ADDRMODE_RELATIVE ;
 int D3DVS_SWIZZLE_MASK ;
 void* E_INVALIDARG ;
 int FIXME (char*,int) ;
 int WARN (char*) ;
 int d3d9_register (int) ;
 int d3d9_srcmod (int ) ;
 int d3d9_swizzle (int ) ;
 int d3dsp_register (int,int ) ;
 int map_vs_output (struct bc_writer*,int ,int,int*) ;
 int put_dword (struct bytecode_buffer*,int) ;

__attribute__((used)) static void vs_2_srcreg(struct bc_writer *This,
                        const struct shader_reg *reg,
                        struct bytecode_buffer *buffer) {
    DWORD token = (1u << 31);
    DWORD has_swizzle;
    DWORD component;
    DWORD d3d9reg;

    switch(reg->type) {
        case 135:



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
        case 142:



            FIXME("Unexpected register type %u\n", reg->type);

        case 138:
        case 132:
        case 141:
        case 143:
        case 139:
        case 140:
        case 137:
            d3d9reg = d3d9_register(reg->type);
            token |= d3dsp_register( d3d9reg, reg->regnum );
            break;

        case 136:
            if(reg->regnum != 0) {
                WARN("Only regnum 0 is supported for the loop index register in vs_2_0\n");
                This->state = E_INVALIDARG;
                return;
            }
            token |= d3dsp_register( D3DSPR_LOOP, 0 );
            break;

        case 134:
            if(This->version != BWRITERVS_VERSION(2, 1)){
                WARN("Predicate register is allowed only in vs_2_x\n");
                This->state = E_INVALIDARG;
                return;
            }
            if(reg->regnum > 0) {
                WARN("Only predicate register 0 is supported\n");
                This->state = E_INVALIDARG;
                return;
            }
            token |= d3dsp_register( D3DSPR_PREDICATE, 0 );
            break;

        default:
            WARN("Invalid register type for 2.0 vshader\n");
            This->state = E_INVALIDARG;
            return;
    }

    token |= d3d9_swizzle(reg->u.swizzle) & D3DVS_SWIZZLE_MASK;

    token |= d3d9_srcmod(reg->srcmod);

    if(reg->rel_reg)
        token |= D3DVS_ADDRMODE_RELATIVE & D3DVS_ADDRESSMODE_MASK;

    put_dword(buffer, token);




    if(token & D3DVS_ADDRMODE_RELATIVE)
        vs_2_srcreg(This, reg->rel_reg, buffer);
}
