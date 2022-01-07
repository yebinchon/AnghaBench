
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int const ut8 ;
struct winedbg_arm_insn {int dummy; } ;
struct TYPE_7__ {int bits; scalar_t__ big_endian; int pc; } ;
struct TYPE_6__ {int size; int buf; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int arm_disasm_one_insn (struct winedbg_arm_insn*) ;
 int arm_free (struct winedbg_arm_insn*) ;
 struct winedbg_arm_insn* arm_new () ;
 int arm_set_input_buffer (struct winedbg_arm_insn*,int const*) ;
 int arm_set_pc (struct winedbg_arm_insn*,int ) ;
 int arm_set_thumb (struct winedbg_arm_insn*,int) ;
 int r_asm_op_set_hex (TYPE_1__*,int ) ;
 int r_mem_swapendian (int const*,int const*,int) ;
 int r_strbuf_set (int *,char const*) ;
 char* winedbg_arm_insn_asm (struct winedbg_arm_insn*) ;
 int winedbg_arm_insn_hex (struct winedbg_arm_insn*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 ut8 buf2[4];
 struct winedbg_arm_insn *arminsn = arm_new();
 arm_set_pc (arminsn, a->pc);
 arm_set_thumb (arminsn, a->bits == 16);
 if (a->big_endian && a->bits == 32) {
  r_mem_swapendian (buf2, buf, 4);
  arm_set_input_buffer (arminsn, buf2);
 } else {
  arm_set_input_buffer (arminsn, buf);
 }
 op->size = arm_disasm_one_insn (arminsn);
 const char *asmstr = winedbg_arm_insn_asm (arminsn);
 if (asmstr) {
  r_strbuf_set (&op->buf_asm, asmstr);
  r_asm_op_set_hex(op, winedbg_arm_insn_hex (arminsn));
 } else {
  r_strbuf_set (&op->buf_asm, "invalid");
  r_strbuf_set (&op->buf, "");
 }
 arm_free (arminsn);
 return op->size;
}
