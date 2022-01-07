
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {int syntax; TYPE_2__* insn; TYPE_1__* head; int length; } ;
typedef TYPE_3__ tms320_dasm_t ;
typedef int insn_item_t ;
struct TYPE_19__ {int syntax; } ;
struct TYPE_18__ {int size; } ;


 int E ;
 int decode_addresses (TYPE_3__*) ;
 int decode_addressing_modes (TYPE_3__*) ;
 int decode_bits (TYPE_3__*) ;
 int decode_braces (TYPE_3__*) ;
 int decode_cond (TYPE_3__*) ;
 int decode_constants (TYPE_3__*) ;
 int decode_qualifiers (TYPE_3__*) ;
 int decode_registers (TYPE_3__*) ;
 int decode_relop (TYPE_3__*) ;
 int decode_swap (TYPE_3__*) ;
 scalar_t__ field_valid (TYPE_3__*,int ) ;
 scalar_t__ field_value (TYPE_3__*,int ) ;
 int * finalize (TYPE_3__*) ;
 int snprintf (int ,int,char*,int ) ;

insn_item_t * decode_insn(tms320_dasm_t * dasm)
{
 dasm->length = dasm->head->size;

 snprintf(dasm->syntax, sizeof(dasm->syntax), field_valid(dasm, E) && field_value(dasm, E) ? "|| %s" : "%s", dasm->insn->syntax);


 decode_bits(dasm);
 decode_braces(dasm);
 decode_qualifiers(dasm);

 decode_constants(dasm);
 decode_addresses(dasm);

 decode_swap(dasm);
 decode_relop(dasm);
 decode_cond(dasm);

 decode_registers(dasm);
 decode_addressing_modes(dasm);

 return finalize(dasm);

}
