
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asm_parser {int status; int line_no; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ BWRITERSPSM_BIAS ;
 scalar_t__ BWRITERSPSM_BIASNEG ;
 scalar_t__ BWRITERSPSM_COMP ;
 scalar_t__ BWRITERSPSM_DW ;
 scalar_t__ BWRITERSPSM_DZ ;
 scalar_t__ BWRITERSPSM_SIGN ;
 scalar_t__ BWRITERSPSM_SIGNNEG ;
 scalar_t__ BWRITERSPSM_X2 ;
 scalar_t__ BWRITERSPSM_X2NEG ;
 int PARSE_ERR ;
 int asmparser_message (struct asm_parser*,char*,int ,int ) ;
 int debug_print_srcmod (scalar_t__) ;
 int set_parse_status (int *,int ) ;

__attribute__((used)) static void check_legacy_srcmod(struct asm_parser *This, DWORD srcmod) {
    if(srcmod == BWRITERSPSM_BIAS || srcmod == BWRITERSPSM_BIASNEG ||
       srcmod == BWRITERSPSM_SIGN || srcmod == BWRITERSPSM_SIGNNEG ||
       srcmod == BWRITERSPSM_COMP || srcmod == BWRITERSPSM_X2 ||
       srcmod == BWRITERSPSM_X2NEG || srcmod == BWRITERSPSM_DZ ||
       srcmod == BWRITERSPSM_DW) {
        asmparser_message(This, "Line %u: Source modifier %s not supported in this shader version\n",
                          This->line_no,
                          debug_print_srcmod(srcmod));
        set_parse_status(&This->status, PARSE_ERR);
    }
}
