
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int dummy; } ;
typedef int sljit_sw ;
typedef size_t sljit_s32 ;
typedef int sljit_ins ;


 int A (size_t) ;
 int ADDIS ;
 int B (size_t) ;
 int D (size_t) ;
 int FAIL_IF (size_t) ;
 int IMM (int) ;
 size_t INDEXED ;
 int INST_CODE_AND_DST (int,size_t,size_t) ;
 int INT_ALIGNED ;
 size_t MEM_MASK ;
 size_t OFFS_REG (size_t) ;
 size_t OFFS_REG_MASK ;
 size_t REG_MASK ;
 int RLDI (size_t,size_t,int,int,int) ;
 int RLWINM ;
 int S (size_t) ;
 int SIMM_MAX ;
 int SIMM_MIN ;
 int SLJIT_ASSERT (int) ;
 size_t SLJIT_MEM ;
 scalar_t__ SLJIT_UNLIKELY (size_t) ;
 int* data_transfer_insts ;
 size_t load_immediate (struct sljit_compiler*,size_t,int) ;
 size_t push_inst (struct sljit_compiler*,int) ;

__attribute__((used)) static sljit_s32 emit_op_mem(struct sljit_compiler *compiler, sljit_s32 inp_flags, sljit_s32 reg,
 sljit_s32 arg, sljit_sw argw, sljit_s32 tmp_reg)
{
 sljit_ins inst;
 sljit_s32 offs_reg;
 sljit_sw high_short;


 SLJIT_ASSERT(A(0) == 0);
 SLJIT_ASSERT(arg & SLJIT_MEM);

 if (SLJIT_UNLIKELY(arg & OFFS_REG_MASK)) {
  argw &= 0x3;
  offs_reg = OFFS_REG(arg);

  if (argw != 0) {



   FAIL_IF(push_inst(compiler, RLDI(tmp_reg, OFFS_REG(arg), argw, 63 - argw, 1)));

   offs_reg = tmp_reg;
  }

  inst = data_transfer_insts[(inp_flags | INDEXED) & MEM_MASK];





  return push_inst(compiler, INST_CODE_AND_DST(inst, inp_flags, reg) | A(arg & REG_MASK) | B(offs_reg));
 }

 inst = data_transfer_insts[inp_flags & MEM_MASK];
 arg &= REG_MASK;
 if (argw <= SIMM_MAX && argw >= SIMM_MIN)
  return push_inst(compiler, INST_CODE_AND_DST(inst, inp_flags, reg) | A(arg) | IMM(argw));





  high_short = (sljit_s32)(argw + ((argw & 0x8000) << 1)) & ~0xffff;




  SLJIT_ASSERT(high_short);


  FAIL_IF(push_inst(compiler, ADDIS | D(tmp_reg) | A(arg) | IMM(high_short >> 16)));
  return push_inst(compiler, INST_CODE_AND_DST(inst, inp_flags, reg) | A(tmp_reg) | IMM(argw));
}
