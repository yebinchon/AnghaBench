
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct asm_parser {TYPE_2__* shader; int status; int line_no; } ;
struct TYPE_4__ {int num_instrs; TYPE_1__** instr; } ;
struct TYPE_3__ {int coissue; } ;


 int PARSE_ERR ;
 int TRUE ;
 int asmparser_message (struct asm_parser*,char*,int ) ;
 int set_parse_status (int *,int ) ;

__attribute__((used)) static void asmparser_coissue_supported(struct asm_parser *This) {

    if(!This->shader) return;
    if(This->shader->num_instrs == 0){
        asmparser_message(This, "Line %u: Coissue flag on the first shader instruction\n", This->line_no);
        set_parse_status(&This->status, PARSE_ERR);
    }
    This->shader->instr[This->shader->num_instrs-1]->coissue = TRUE;
}
