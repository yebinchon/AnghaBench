
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int swizzle; } ;
struct shader_reg {int * rel_reg; int srcmod; TYPE_2__ u; int regnum; int type; } ;
struct instruction {struct shader_reg* src; scalar_t__ comptype; void* shift; void* dstmod; int opcode; } ;
struct asm_parser {int status; int shader; TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* dstreg ) (struct asm_parser*,struct instruction*,struct shader_reg const*) ;} ;
typedef void* DWORD ;


 int BWRITERSIO_TEX ;
 int BWRITERSPR_SAMPLER ;
 int BWRITERSPSM_NONE ;
 int BWRITERVS_NOSWIZZLE ;
 int ERR (char*) ;
 int PARSE_ERR ;
 int ZeroMemory (struct shader_reg*,int) ;
 int add_instruction (int ,struct instruction*) ;
 struct instruction* alloc_instr (int) ;
 int set_parse_status (int *,int ) ;
 int stub1 (struct asm_parser*,struct instruction*,struct shader_reg const*) ;

__attribute__((used)) static void asmparser_texhelper(struct asm_parser *This, DWORD mod, DWORD shift,
                                const struct shader_reg *dst,
                                const struct shader_reg *src0) {
    struct instruction *instr = alloc_instr(2);

    if(!instr) {
        ERR("Error allocating memory for the instruction\n");
        set_parse_status(&This->status, PARSE_ERR);
        return;
    }

    instr->opcode = BWRITERSIO_TEX;
    instr->dstmod = mod;
    instr->shift = shift;
    instr->comptype = 0;

    This->funcs->dstreg(This, instr, dst);

    instr->src[0] = *src0;




    ZeroMemory(&instr->src[1], sizeof(instr->src[1]));
    instr->src[1].type = BWRITERSPR_SAMPLER;
    instr->src[1].regnum = dst->regnum;
    instr->src[1].u.swizzle = BWRITERVS_NOSWIZZLE;
    instr->src[1].srcmod = BWRITERSPSM_NONE;
    instr->src[1].rel_reg = ((void*)0);

    if(!add_instruction(This->shader, instr)) {
        ERR("Out of memory\n");
        set_parse_status(&This->status, PARSE_ERR);
    }
}
