
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_reg {int dummy; } ;
struct instruction {int has_dst; struct shader_reg dst; int shift; int dstmod; } ;
struct asm_parser {int status; int line_no; } ;


 int PARSE_ERR ;
 int TRUE ;
 int asmparser_message (struct asm_parser*,char*,int ,int ) ;
 int check_ps_dstmod (struct asm_parser*,int ) ;
 int check_reg_type (struct shader_reg const*,int ) ;
 int check_shift_dstmod (struct asm_parser*,int ) ;
 int debug_print_dstreg (struct shader_reg const*) ;
 struct shader_reg map_oldvs_register (struct shader_reg const*) ;
 int set_parse_status (int *,int ) ;
 int vs_2_reg_allowed ;

__attribute__((used)) static void asmparser_dstreg_vs_2(struct asm_parser *This,
                                  struct instruction *instr,
                                  const struct shader_reg *dst) {
    struct shader_reg reg;

    if(!check_reg_type(dst, vs_2_reg_allowed)) {
        asmparser_message(This, "Line %u: Destination register %s not supported in VS 2.0\n",
                          This->line_no,
                          debug_print_dstreg(dst));
        set_parse_status(&This->status, PARSE_ERR);
    }
    check_ps_dstmod(This, instr->dstmod);
    check_shift_dstmod(This, instr->shift);
    reg = map_oldvs_register(dst);
    instr->dst = reg;
    instr->has_dst = TRUE;
}
