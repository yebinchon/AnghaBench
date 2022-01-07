
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int buf_asm ;
struct TYPE_9__ {int member_0; } ;
typedef TYPE_1__ amd29k_instr_t ;
struct TYPE_11__ {int cpu; int pc; } ;
struct TYPE_10__ {int size; } ;
typedef TYPE_2__ RAsmOp ;
typedef TYPE_3__ RAsm ;


 scalar_t__ amd29k_instr_decode (int const*,int,TYPE_1__*,int ) ;
 int amd29k_instr_print (char*,int,int ,TYPE_1__*) ;
 int r_asm_op_set_asm (TYPE_2__*,char*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 if (!a || !op || !buf || len < 4) {
  return -1;
 }
 char buf_asm[64];
 ut64 offset = a->pc;
 amd29k_instr_t instruction = {0};
 op->size = 4;
 if (amd29k_instr_decode (buf, len, &instruction, a->cpu)) {
  amd29k_instr_print (buf_asm, sizeof (buf_asm), offset, &instruction);
  r_asm_op_set_asm (op, buf_asm);
  return 4;
 }
 r_asm_op_set_asm (op, "invalid");
 return -1;
}
