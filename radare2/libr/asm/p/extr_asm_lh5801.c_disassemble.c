
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct lh5801_insn {int member_0; } ;
typedef int buf_asm ;
struct TYPE_3__ {int size; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int lh5801_decode (struct lh5801_insn*,int const*,int) ;
 int lh5801_print_insn (char*,int,struct lh5801_insn*) ;
 int r_strbuf_set (int *,char*) ;

__attribute__((used)) static int disassemble(RAsm *as, RAsmOp *op, const ut8 *buf, int len) {
 struct lh5801_insn insn = {0};
 if (!op) {
  return 0;
 }
 int consumed = lh5801_decode (&insn, buf, len);
 if (consumed == -1 || consumed == 0) {
  r_strbuf_set (&op->buf_asm, "invalid");
  op->size = 1;
  return 0;
 }
 char buf_asm[128] = {0};
 lh5801_print_insn (buf_asm, sizeof (buf_asm), &insn);
 r_strbuf_set (&op->buf_asm, buf_asm);
 op->size = consumed;


 return op->size;
}
