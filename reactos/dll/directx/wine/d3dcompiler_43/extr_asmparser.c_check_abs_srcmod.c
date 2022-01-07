
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asm_parser {int status; int line_no; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ BWRITERSPSM_ABS ;
 scalar_t__ BWRITERSPSM_ABSNEG ;
 int PARSE_ERR ;
 int asmparser_message (struct asm_parser*,char*,int ,int ) ;
 int debug_print_srcmod (scalar_t__) ;
 int set_parse_status (int *,int ) ;

__attribute__((used)) static void check_abs_srcmod(struct asm_parser *This, DWORD srcmod) {
    if(srcmod == BWRITERSPSM_ABS || srcmod == BWRITERSPSM_ABSNEG) {
        asmparser_message(This, "Line %u: Source modifier %s not supported in this shader version\n",
                          This->line_no,
                          debug_print_srcmod(srcmod));
        set_parse_status(&This->status, PARSE_ERR);
    }
}
