
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
typedef int ut32 ;
struct TYPE_5__ {int noperands; int * odecs; int opcode; int mnemonic; } ;
typedef TYPE_1__ rsp_instruction_priv ;
struct TYPE_6__ {int noperands; int * operands; int opcode; int mnemonic; } ;
typedef TYPE_2__ rsp_instruction ;


 TYPE_1__* rsp_decode_priv (int ) ;
 int rsp_operand_decode (int ,int ,int *) ;

rsp_instruction rsp_instruction_decode(ut64 pc, ut32 iw) {
 int opnd;
 const rsp_instruction_priv* priv = rsp_decode_priv (iw);

 rsp_instruction r_instr;

 r_instr.mnemonic = priv->mnemonic;
 r_instr.opcode = priv->opcode;
 r_instr.noperands = priv->noperands;
 for (opnd = 0; opnd < r_instr.noperands; ++opnd) {
  r_instr.operands[opnd] = rsp_operand_decode (pc, iw, &priv->odecs[opnd]);
 }

 return r_instr;
}
