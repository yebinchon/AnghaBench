
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int member_0; } ;
struct TYPE_8__ {int txt; TYPE_1__ member_0; } ;
typedef TYPE_2__ WasmOp ;
struct TYPE_9__ {int size; } ;
typedef TYPE_3__ RAsmOp ;
typedef int RAsm ;


 int free (int ) ;
 int r_asm_op_set_asm (TYPE_3__*,int ) ;
 int wasm_dis (TYPE_2__*,int const*,int) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 WasmOp wop = {{0}};
 int ret = wasm_dis (&wop, buf, len);
 r_asm_op_set_asm (op, wop.txt);
 free (wop.txt);
 op->size = ret;
 return op->size;
}
