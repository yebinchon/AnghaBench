
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
 int z80asm (int *,char const*) ;

__attribute__((used)) static int do_assemble(RAsm *a, RAsmOp *op, const char *buf) {
 return op->size = z80asm ((ut8*)r_strbuf_get (&op->buf), buf);
}
