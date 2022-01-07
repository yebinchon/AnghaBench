
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_8__ {int member_0; } ;
typedef TYPE_1__ insn_t ;
typedef int insn ;
struct TYPE_9__ {int bits; } ;
typedef int RAsmOp ;
typedef TYPE_2__ RAsm ;


 int R_MIN (int,int) ;
 int memcpy (TYPE_1__*,int const*,int ) ;
 int riscv_disassemble (TYPE_2__*,int *,TYPE_1__,int ,int) ;
 int riscv_insn_length (TYPE_1__) ;

__attribute__((used)) static int riscv_dis(RAsm *a, RAsmOp *rop, const ut8 *buf, ut64 len) {
 insn_t insn = {0};
 if (len < 2) {
  return -1;
 }
 memcpy (&insn, buf, R_MIN (sizeof (insn), len));
 int insn_len = riscv_insn_length(insn);
 if (len < insn_len) {
  return -1;
 }
 riscv_disassemble (a, rop, insn, a->bits, len);
 return insn_len;
}
