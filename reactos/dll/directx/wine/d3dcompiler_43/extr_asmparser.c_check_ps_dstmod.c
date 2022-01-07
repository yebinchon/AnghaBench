
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asm_parser {int status; int line_no; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ BWRITERSPDM_MSAMPCENTROID ;
 scalar_t__ BWRITERSPDM_PARTIALPRECISION ;
 int PARSE_ERR ;
 int asmparser_message (struct asm_parser*,char*,int ,int ) ;
 int debug_print_dstmod (scalar_t__) ;
 int set_parse_status (int *,int ) ;

__attribute__((used)) static void check_ps_dstmod(struct asm_parser *This, DWORD dstmod) {
    if(dstmod == BWRITERSPDM_PARTIALPRECISION ||
       dstmod == BWRITERSPDM_MSAMPCENTROID) {
        asmparser_message(This, "Line %u: Instruction modifier %s not supported in this shader version\n",
                          This->line_no,
                          debug_print_dstmod(dstmod));
        set_parse_status(&This->status, PARSE_ERR);
    }
}
