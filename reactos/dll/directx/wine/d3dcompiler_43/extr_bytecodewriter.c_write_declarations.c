
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int writemask; } ;
struct shader_reg {int type; TYPE_1__ u; int regnum; } ;
struct declaration {int usage; int usage_idx; int mod; int writemask; int regnum; scalar_t__ builtin; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {TYPE_2__* funcs; } ;
typedef int reg ;
struct TYPE_4__ {int (* dstreg ) (struct bc_writer*,struct shader_reg*,struct bytecode_buffer*,int ,int ) ;} ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int D3DSIO_DCL ;
 int D3DSI_INSTLENGTH_SHIFT ;
 int D3DSP_DCL_USAGEINDEX_MASK ;
 int D3DSP_DCL_USAGEINDEX_SHIFT ;
 int D3DSP_DCL_USAGE_MASK ;
 int D3DSP_DCL_USAGE_SHIFT ;
 int ZeroMemory (struct shader_reg*,int) ;
 int put_dword (struct bytecode_buffer*,int) ;
 int stub1 (struct bc_writer*,struct shader_reg*,struct bytecode_buffer*,int ,int ) ;

__attribute__((used)) static void write_declarations(struct bc_writer *This,
                               struct bytecode_buffer *buffer, BOOL len,
                               const struct declaration *decls, unsigned int num, DWORD type) {
    DWORD i;
    DWORD instr_dcl = D3DSIO_DCL;
    DWORD token;
    struct shader_reg reg;

    ZeroMemory(&reg, sizeof(reg));

    if(len) {
        instr_dcl |= 2 << D3DSI_INSTLENGTH_SHIFT;
    }

    for(i = 0; i < num; i++) {
        if(decls[i].builtin) continue;


        put_dword(buffer, instr_dcl);


        token = (1u << 31);
        token |= (decls[i].usage << D3DSP_DCL_USAGE_SHIFT) & D3DSP_DCL_USAGE_MASK;
        token |= (decls[i].usage_idx << D3DSP_DCL_USAGEINDEX_SHIFT) & D3DSP_DCL_USAGEINDEX_MASK;
        put_dword(buffer, token);


        reg.type = type;
        reg.regnum = decls[i].regnum;
        reg.u.writemask = decls[i].writemask;
        This->funcs->dstreg(This, &reg, buffer, 0, decls[i].mod);
    }
}
