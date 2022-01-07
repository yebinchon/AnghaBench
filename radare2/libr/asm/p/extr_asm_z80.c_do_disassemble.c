
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int z80Disass (TYPE_1__*,int const*,int) ;

__attribute__((used)) static int do_disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 return op->size = z80Disass (op, buf, len);
}
