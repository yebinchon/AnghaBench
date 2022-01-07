
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct shader_reg {int dummy; } ;
struct asm_parser {TYPE_1__* shader; } ;
struct TYPE_4__ {struct shader_reg predicate; int has_predicate; } ;
struct TYPE_3__ {int num_instrs; TYPE_2__** instr; } ;


 int ERR (char*) ;
 int TRUE ;

__attribute__((used)) static void asmparser_predicate_supported(struct asm_parser *This,
                                          const struct shader_reg *predicate) {

    if(!This->shader) return;
    if(This->shader->num_instrs == 0) ERR("Predicate without an instruction\n");
    This->shader->instr[This->shader->num_instrs - 1]->has_predicate = TRUE;
    This->shader->instr[This->shader->num_instrs - 1]->predicate = *predicate;
}
