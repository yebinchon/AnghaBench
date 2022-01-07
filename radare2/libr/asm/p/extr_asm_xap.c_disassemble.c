
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct r_asm_op_t {int size; int buf_asm; } ;
struct TYPE_3__ {int pc; } ;
typedef TYPE_1__ RAsm ;


 int arch_xap_disasm (char*,int const*,int ) ;
 char* r_strbuf_get (int *) ;

__attribute__((used)) static int disassemble(RAsm *a, struct r_asm_op_t *op, const ut8 *buf, int len) {
 char *buf_asm = r_strbuf_get (&op->buf_asm);
 arch_xap_disasm (buf_asm, buf, a->pc);
 return (op->size = 2);
}
