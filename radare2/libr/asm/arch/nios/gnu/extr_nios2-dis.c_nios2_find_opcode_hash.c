
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nios2_opcode {unsigned long match; unsigned long mask; } ;
struct TYPE_4__ {struct nios2_opcode const* opcode; struct TYPE_4__* next; } ;
typedef TYPE_1__ nios2_opcode_hash ;


 unsigned long OP_MASK_OP ;
 unsigned long OP_SH_OP ;
 TYPE_1__** nios2_hash ;
 int nios2_hash_init ;
 int nios2_init_opcode_hash () ;
 TYPE_1__** nios2_ps_hash ;

const struct nios2_opcode *
nios2_find_opcode_hash (unsigned long opcode)
{
  nios2_opcode_hash *entry;


  if (!nios2_hash_init) {
   nios2_init_opcode_hash ();
  }


  for (entry = nios2_ps_hash[(opcode >> OP_SH_OP) & OP_MASK_OP];
   entry; entry = entry->next) {
   if (entry->opcode->match == (opcode & entry->opcode->mask)) {
    return entry->opcode;
   }
  }


  for (entry = nios2_hash[(opcode >> OP_SH_OP) & OP_MASK_OP];
   entry; entry = entry->next) {
   if (entry->opcode->match == (opcode & entry->opcode->mask)) {
    return entry->opcode;
   }
  }

  return ((void*)0);
}
