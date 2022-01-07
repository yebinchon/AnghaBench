
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int writemask; } ;
struct shader_reg {scalar_t__ type; scalar_t__ rel_reg; TYPE_1__ u; int regnum; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {scalar_t__ version; int state; } ;
typedef int DWORD ;


 scalar_t__ BWRITERSPR_OUTPUT ;
 scalar_t__ BWRITERVS_VERSION (int,int ) ;
 int D3DVS_ADDRESSMODE_MASK ;
 int D3DVS_ADDRMODE_RELATIVE ;
 int E_INVALIDARG ;
 int WARN (char*) ;
 int d3d9_dstmod (int) ;
 int d3d9_register (scalar_t__) ;
 int d3d9_writemask (int ) ;
 int d3dsp_register (int,int ) ;
 int put_dword (struct bytecode_buffer*,int) ;
 int sm_3_srcreg (struct bc_writer*,scalar_t__,struct bytecode_buffer*) ;

__attribute__((used)) static void sm_3_dstreg(struct bc_writer *This,
                        const struct shader_reg *reg,
                        struct bytecode_buffer *buffer,
                        DWORD shift, DWORD mod) {
    DWORD token = (1u << 31);
    DWORD d3d9reg;

    if(reg->rel_reg) {
        if(This->version == BWRITERVS_VERSION(3, 0) &&
           reg->type == BWRITERSPR_OUTPUT) {
            token |= D3DVS_ADDRMODE_RELATIVE & D3DVS_ADDRESSMODE_MASK;
        } else {
            WARN("Relative addressing not supported for this shader type or register type\n");
            This->state = E_INVALIDARG;
            return;
        }
    }

    d3d9reg = d3d9_register(reg->type);
    token |= d3dsp_register( d3d9reg, reg->regnum );
    token |= d3d9_dstmod(mod);
    token |= d3d9_writemask(reg->u.writemask);
    put_dword(buffer, token);




    if(token & D3DVS_ADDRMODE_RELATIVE) {
        sm_3_srcreg(This, reg->rel_reg, buffer);
    }
}
