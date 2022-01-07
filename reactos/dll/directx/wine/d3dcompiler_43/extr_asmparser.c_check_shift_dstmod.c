
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asm_parser {int status; int line_no; } ;
typedef scalar_t__ DWORD ;


 int PARSE_ERR ;
 int asmparser_message (struct asm_parser*,char*,int ) ;
 int set_parse_status (int *,int ) ;

__attribute__((used)) static void check_shift_dstmod(struct asm_parser *This, DWORD shift) {
    if(shift != 0) {
        asmparser_message(This, "Line %u: Shift modifiers not supported in this shader version\n",
                          This->line_no);
        set_parse_status(&This->status, PARSE_ERR);
    }
}
