
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct shader_reg {int dummy; } ;
struct TYPE_4__ {int writemask; } ;
struct TYPE_5__ {TYPE_1__ u; int regnum; } ;
struct instruction {TYPE_2__ dst; scalar_t__ shift; int dstmod; } ;
struct asm_parser {int status; int shader; TYPE_3__* funcs; } ;
struct TYPE_6__ {int (* dstreg ) (struct asm_parser*,struct instruction*,struct shader_reg const*) ;} ;
typedef int DWORD ;


 int ERR (char*) ;
 int FALSE ;
 int PARSE_ERR ;
 int record_declaration (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int set_parse_status (int *,int ) ;
 int stub1 (struct asm_parser*,struct instruction*,struct shader_reg const*) ;

__attribute__((used)) static void asmparser_dcl_input_ps_2(struct asm_parser *This, DWORD usage, DWORD num,
                                     DWORD mod, const struct shader_reg *reg) {
    struct instruction instr;

    if(!This->shader) return;
    instr.dstmod = mod;
    instr.shift = 0;
    This->funcs->dstreg(This, &instr, reg);
    if(!record_declaration(This->shader, usage, num, mod, FALSE, instr.dst.regnum, instr.dst.u.writemask, FALSE)) {
        ERR("Out of memory\n");
        set_parse_status(&This->status, PARSE_ERR);
    }
}
