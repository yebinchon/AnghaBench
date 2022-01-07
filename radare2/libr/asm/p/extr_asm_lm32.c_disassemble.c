
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_10__ {int invhex; int pc; } ;
struct TYPE_9__ {int value; int addr; int member_0; } ;
struct TYPE_8__ {int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsmLm32Instruction ;
typedef TYPE_3__ RAsm ;


 scalar_t__ r_asm_lm32_decode (TYPE_2__*) ;
 scalar_t__ r_asm_lm32_stringify (TYPE_2__*,int ) ;
 int r_strbuf_get (int *) ;
 int r_strbuf_set (int *,char*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 RAsmLm32Instruction instr = {0};
 instr.value = buf[0] << 24 | buf[1] << 16 | buf[2] << 8 | buf[3];
 instr.addr = a->pc;
 if (r_asm_lm32_decode (&instr)) {
  r_strbuf_set (&op->buf_asm, "invalid");
  a->invhex = 1;
  return -1;
 }

 if (r_asm_lm32_stringify (&instr, r_strbuf_get (&op->buf_asm))) {
  r_strbuf_set (&op->buf_asm, "invalid");
  a->invhex = 1;
  return -1;
 }
 return 4;
}
