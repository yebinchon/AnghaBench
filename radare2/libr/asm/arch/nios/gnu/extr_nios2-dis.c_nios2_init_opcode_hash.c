
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nios2_opcode {int pinfo; unsigned int match; char* name; } ;
struct TYPE_4__ {struct TYPE_4__* next; struct nios2_opcode const* opcode; } ;
typedef TYPE_1__ nios2_opcode_hash ;


 int NIOS2_INSN_MACRO ;
 int NIOS2_INSN_MACRO_MOV ;
 int NIOS2_INSN_MACRO_MOVI ;
 size_t NUMOPCODES ;
 unsigned int OP_MASK_OP ;
 unsigned int OP_SH_OP ;
 int abort () ;
 int fprintf (int ,char*) ;
 scalar_t__ malloc (int) ;
 TYPE_1__** nios2_hash ;
 int nios2_hash_init ;
 struct nios2_opcode const* nios2_opcodes ;
 TYPE_1__** nios2_ps_hash ;
 int printf (char*,...) ;
 int stderr ;

__attribute__((used)) static void
nios2_init_opcode_hash (void)
{
  unsigned int i;
  register const struct nios2_opcode *op;

  for (i = 0; i <= OP_MASK_OP; ++i) {
   nios2_hash[0] = ((void*)0);
  }
  for (i = 0; i <= OP_MASK_OP; i++) {
   for (op = nios2_opcodes; op < &nios2_opcodes[NUMOPCODES]; op++) {
    nios2_opcode_hash *new_hash;
    nios2_opcode_hash **bucket = ((void*)0);

    if ((op->pinfo & NIOS2_INSN_MACRO) == NIOS2_INSN_MACRO) {
     if (i == ((op->match >> OP_SH_OP) & OP_MASK_OP) && (op->pinfo & (NIOS2_INSN_MACRO_MOV | NIOS2_INSN_MACRO_MOVI) & 0x7fffffff)) {
      bucket = &(nios2_ps_hash[i]);
     }
    } else if (i == ((op->match >> OP_SH_OP) & OP_MASK_OP)) {
     bucket = &(nios2_hash[i]);
    }

    if (bucket) {
     new_hash =
      (nios2_opcode_hash *)malloc (sizeof (nios2_opcode_hash));
     if (!new_hash) {
      fprintf (stderr,
       "error allocating memory...broken disassembler\n");
      abort ();
     }
     new_hash->opcode = op;
     new_hash->next = ((void*)0);
     while (*bucket) {
      bucket = &((*bucket)->next);
     }
     *bucket = new_hash;
    }
   }
  }
  nios2_hash_init = 1;
}
