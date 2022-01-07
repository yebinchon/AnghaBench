
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int writemask; } ;
struct shader_reg {TYPE_1__ u; int regnum; } ;
struct asm_parser {int status; TYPE_2__* shader; int line_no; } ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef int DWORD ;


 int ERR (char*) ;
 int FALSE ;
 int PARSE_ERR ;
 scalar_t__ ST_PIXEL ;
 int TRUE ;
 int asmparser_message (struct asm_parser*,char*,int ) ;
 int record_declaration (TYPE_2__*,int ,int ,int ,int ,int ,int ,int ) ;
 int set_parse_status (int *,int ) ;

__attribute__((used)) static void asmparser_dcl_output(struct asm_parser *This, DWORD usage, DWORD num,
                                 const struct shader_reg *reg) {
    if(!This->shader) return;
    if(This->shader->type == ST_PIXEL) {
        asmparser_message(This, "Line %u: Output register declared in a pixel shader\n", This->line_no);
        set_parse_status(&This->status, PARSE_ERR);
    }
    if(!record_declaration(This->shader, usage, num, 0, TRUE, reg->regnum, reg->u.writemask, FALSE)) {
        ERR("Out of memory\n");
        set_parse_status(&This->status, PARSE_ERR);
    }
}
