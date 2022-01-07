
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int size; int buf; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 scalar_t__ r_strbuf_get (int *) ;
 int wasm_asm (char const*,int *,int) ;

__attribute__((used)) static int assemble(RAsm *a, RAsmOp *op, const char *buf) {
 ut8 *opbuf = (ut8*)r_strbuf_get (&op->buf);
 op->size = wasm_asm (buf, opbuf, 32);
 return op->size;
}
