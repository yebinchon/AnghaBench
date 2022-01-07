
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_reg {int dummy; } ;
struct asm_parser {int status; int line_no; } ;
typedef int DWORD ;


 int PARSE_ERR ;
 int asmparser_message (struct asm_parser*,char*,int ) ;
 int set_parse_status (int *,int ) ;

__attribute__((used)) static void asmparser_dcl_input_unsupported(struct asm_parser *This,
        DWORD usage, DWORD num, DWORD mod, const struct shader_reg *reg)
{
    asmparser_message(This, "Line %u: Input declaration unsupported in this shader version\n", This->line_no);
    set_parse_status(&This->status, PARSE_ERR);
}
