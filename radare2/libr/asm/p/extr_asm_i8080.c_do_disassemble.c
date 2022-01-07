
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int size; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int R_MAX (int ,int) ;
 int i8080_disasm (int const*,int ,int) ;
 int r_strbuf_get (int *) ;

__attribute__((used)) static int do_disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 int dlen = i8080_disasm (buf, r_strbuf_get (&op->buf_asm), len);
 return op->size = R_MAX (0, dlen);
}
