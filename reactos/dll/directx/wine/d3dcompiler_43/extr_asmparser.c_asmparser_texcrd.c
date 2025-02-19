
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct src_regs {int count; int * reg; } ;
struct shader_reg {int dummy; } ;
struct instruction {scalar_t__ comptype; void* shift; void* dstmod; int opcode; } ;
struct asm_parser {int status; int shader; TYPE_1__* funcs; int line_no; } ;
struct TYPE_2__ {int (* srcreg ) (struct asm_parser*,struct instruction*,int ,int *) ;int (* dstreg ) (struct asm_parser*,struct instruction*,struct shader_reg const*) ;} ;
typedef void* DWORD ;


 int BWRITERSIO_MOV ;
 int ERR (char*) ;
 int PARSE_ERR ;
 int add_instruction (int ,struct instruction*) ;
 struct instruction* alloc_instr (int) ;
 int asmparser_message (struct asm_parser*,char*,int ) ;
 int set_parse_status (int *,int ) ;
 int stub1 (struct asm_parser*,struct instruction*,struct shader_reg const*) ;
 int stub2 (struct asm_parser*,struct instruction*,int ,int *) ;

__attribute__((used)) static void asmparser_texcrd(struct asm_parser *This, DWORD mod, DWORD shift,
                             const struct shader_reg *dst,
                             const struct src_regs *srcs) {
    struct instruction *instr;

    if(!srcs || srcs->count != 1) {
        asmparser_message(This, "Line %u: Wrong number of source registers in texcrd instruction\n", This->line_no);
        set_parse_status(&This->status, PARSE_ERR);
        return;
    }

    instr = alloc_instr(1);
    if(!instr) {
        ERR("Error allocating memory for the instruction\n");
        set_parse_status(&This->status, PARSE_ERR);
        return;
    }


    instr->opcode = BWRITERSIO_MOV;
    instr->dstmod = mod;
    instr->shift = shift;
    instr->comptype = 0;

    This->funcs->dstreg(This, instr, dst);
    This->funcs->srcreg(This, instr, 0, &srcs->reg[0]);

    if(!add_instruction(This->shader, instr)) {
        ERR("Out of memory\n");
        set_parse_status(&This->status, PARSE_ERR);
    }
}
