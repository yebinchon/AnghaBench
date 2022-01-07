
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut16 ;
struct TYPE_3__ {int size; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int dcpu16_disasm (char*,int const*,int,int *) ;
 int r_strbuf_set (int *,char*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 char buf_asm[32];
 if (len < 2) {
  return -1;
 }
 op->size = dcpu16_disasm (buf_asm, (const ut16*)buf, len, ((void*)0));
 r_strbuf_set (&op->buf_asm, (op->size > 0) ? buf_asm: "(data)");
 return op->size;
}
