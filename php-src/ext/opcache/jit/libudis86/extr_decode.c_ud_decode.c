
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ud {int error; unsigned int inp_ctr; int pc; scalar_t__ asm_buf_fill; int insn_offset; scalar_t__ pfx_seg; TYPE_1__* operand; TYPE_2__* itab_entry; int mnemonic; int * le; } ;
struct TYPE_4__ {int prefix; int mnemonic; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int P_SEG (int ) ;
 scalar_t__ UD_OP_MEM ;
 int clear_insn (struct ud*) ;
 int decode_opcode (struct ud*) ;
 int decode_prefixes (struct ud*) ;
 int inp_start (struct ud*) ;
 TYPE_2__* ud_itab ;
 int * ud_lookup_table_list ;

unsigned int
ud_decode(struct ud *u)
{
  inp_start(u);
  clear_insn(u);
  u->le = &ud_lookup_table_list[0];
  u->error = decode_prefixes(u) == -1 ||
             decode_opcode(u) == -1 ||
             u->error;

  if (u->error) {

    clear_insn(u);

    u->itab_entry = &ud_itab[0];
    u->mnemonic = u->itab_entry->mnemonic;
  }




    if ( !P_SEG( u->itab_entry->prefix ) &&
            u->operand[0].type != UD_OP_MEM &&
            u->operand[1].type != UD_OP_MEM )
        u->pfx_seg = 0;

  u->insn_offset = u->pc;
  u->asm_buf_fill = 0;
  u->pc += u->inp_ctr;


  return u->inp_ctr;
}
