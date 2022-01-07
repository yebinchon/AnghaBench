
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bytecode_buffer {int dummy; } ;
struct bwriter_shader {size_t num_samplers; TYPE_1__* samplers; } ;
struct TYPE_2__ {size_t const regnum; int mod; int type; } ;
typedef size_t DWORD ;


 int D3DSIO_DCL ;
 int D3DSI_INSTLENGTH_SHIFT ;
 int D3DSPR_SAMPLER ;
 size_t const D3DSP_REGNUM_MASK ;
 size_t D3DSP_TEXTURETYPE_MASK ;
 unsigned int D3DSP_WRITEMASK_ALL ;
 size_t d3d9_dstmod (int ) ;
 size_t d3d9_sampler (int ) ;
 unsigned int d3dsp_register (int ,int ) ;
 int put_dword (struct bytecode_buffer*,size_t) ;

__attribute__((used)) static void write_samplers(const struct bwriter_shader *shader, struct bytecode_buffer *buffer) {
    DWORD i;
    DWORD instr_dcl = D3DSIO_DCL | (2 << D3DSI_INSTLENGTH_SHIFT);
    DWORD token;
    const DWORD reg = (1u << 31) | d3dsp_register( D3DSPR_SAMPLER, 0 ) | D3DSP_WRITEMASK_ALL;

    for(i = 0; i < shader->num_samplers; i++) {

        put_dword(buffer, instr_dcl);
        token = (1u << 31);

        token |= (d3d9_sampler(shader->samplers[i].type)) & D3DSP_TEXTURETYPE_MASK;
        put_dword(buffer, token);
        token = reg | (shader->samplers[i].regnum & D3DSP_REGNUM_MASK);
        token |= d3d9_dstmod(shader->samplers[i].mod);
        put_dword(buffer, token);
    }
}
