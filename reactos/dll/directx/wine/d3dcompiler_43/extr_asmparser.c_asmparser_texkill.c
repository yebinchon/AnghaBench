
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_reg {int dummy; } ;
struct instruction {int has_dst; int dst; scalar_t__ comptype; scalar_t__ shift; scalar_t__ dstmod; int opcode; } ;
struct asm_parser {int status; int shader; } ;


 int BWRITERSIO_TEXKILL ;
 int ERR (char*) ;
 int PARSE_ERR ;
 int TRUE ;
 int add_instruction (int ,struct instruction*) ;
 struct instruction* alloc_instr (int ) ;
 int map_oldps_register (struct shader_reg const*,int ) ;
 int set_parse_status (int *,int ) ;

__attribute__((used)) static void asmparser_texkill(struct asm_parser *This,
                              const struct shader_reg *dst) {
    struct instruction *instr = alloc_instr(0);

    if(!instr) {
        ERR("Error allocating memory for the instruction\n");
        set_parse_status(&This->status, PARSE_ERR);
        return;
    }

    instr->opcode = BWRITERSIO_TEXKILL;
    instr->dstmod = 0;
    instr->shift = 0;
    instr->comptype = 0;
    instr->dst = map_oldps_register(dst, TRUE);
    instr->has_dst = TRUE;

    if(!add_instruction(This->shader, instr)) {
        ERR("Out of memory\n");
        set_parse_status(&This->status, PARSE_ERR);
    }
}
