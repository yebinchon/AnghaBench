
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_9__ {int mnem; int member_0; } ;
struct TYPE_8__ {scalar_t__ pc; } ;
struct TYPE_7__ {int size; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;
typedef TYPE_3__ HexInsn ;


 int hexagon_disasm_instruction (int ,TYPE_3__*,int ) ;
 int r_read_le32 (int const*) ;
 int r_strbuf_set (int *,int ) ;

__attribute__((used)) static int disassemble (RAsm *a, RAsmOp *op, const ut8 *buf, int l) {
 HexInsn hi = {0};
 ut32 data = r_read_le32 (buf);
 op->size = hexagon_disasm_instruction (data, &hi, (ut32) a->pc);
 r_strbuf_set (&op->buf_asm, hi.mnem);
 return op->size;
}
