
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asm_parser {int status; int line_no; } ;


 int PARSE_ERR ;
 int asmparser_message (struct asm_parser*,char*,int ) ;
 int set_parse_status (int *,int ) ;

__attribute__((used)) static void asmparser_coissue_unsupported(struct asm_parser *This) {
    asmparser_message(This, "Line %u: Coissue is only supported in pixel shaders versions <= 1.4\n", This->line_no);
    set_parse_status(&This->status, PARSE_ERR);
}
