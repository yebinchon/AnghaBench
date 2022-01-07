
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_jump {int dummy; } ;
struct sljit_compiler {int skip_checks; } ;
typedef scalar_t__ sljit_sw ;
typedef int sljit_s32 ;


 int CHECK_ERROR_PTR () ;
 int CHECK_PTR (int ) ;
 int PTR_FAIL_IF (int ) ;
 int SLJIT_EQUAL ;


 int SLJIT_I32_OP ;
 int SLJIT_IMM ;


 int SLJIT_NOT_EQUAL ;
 int SLJIT_NOT_ZERO ;
 int SLJIT_REWRITABLE_JUMP ;
 int SLJIT_SET_Z ;




 int SLJIT_SUB ;
 scalar_t__ SLJIT_UNLIKELY (int) ;
 int SLJIT_UNUSED ;
 int VARIABLE_FLAG_SHIFT ;
 int check_sljit_emit_cmp (struct sljit_compiler*,int,int,scalar_t__,int,scalar_t__) ;
 struct sljit_jump* emit_cmp_to0 (struct sljit_compiler*,int,int,scalar_t__) ;
 struct sljit_jump* sljit_emit_jump (struct sljit_compiler*,int) ;
 int sljit_emit_op2 (struct sljit_compiler*,int,int ,int ,int,scalar_t__,int,scalar_t__) ;

struct sljit_jump* sljit_emit_cmp(struct sljit_compiler *compiler, sljit_s32 type,
 sljit_s32 src1, sljit_sw src1w,
 sljit_s32 src2, sljit_sw src2w)
{

 sljit_s32 flags, tmp_src, condition;
 sljit_sw tmp_srcw;

 CHECK_ERROR_PTR();
 CHECK_PTR(check_sljit_emit_cmp(compiler, type, src1, src1w, src2, src2w));

 condition = type & 0xff;
 if (SLJIT_UNLIKELY((src1 & SLJIT_IMM) && !(src2 & SLJIT_IMM))) {

  switch (condition) {
  case 133:
   condition = 135;
   break;
  case 134:
   condition = 132;
   break;
  case 135:
   condition = 133;
   break;
  case 132:
   condition = 134;
   break;
  case 129:
   condition = 131;
   break;
  case 130:
   condition = 128;
   break;
  case 131:
   condition = 129;
   break;
  case 128:
   condition = 130;
   break;
  }

  type = condition | (type & (SLJIT_I32_OP | SLJIT_REWRITABLE_JUMP));
  tmp_src = src1;
  src1 = src2;
  src2 = tmp_src;
  tmp_srcw = src1w;
  src1w = src2w;
  src2w = tmp_srcw;
 }

 if (condition <= SLJIT_NOT_ZERO)
  flags = SLJIT_SET_Z;
 else
  flags = condition << VARIABLE_FLAG_SHIFT;





 PTR_FAIL_IF(sljit_emit_op2(compiler, SLJIT_SUB | flags | (type & SLJIT_I32_OP),
  SLJIT_UNUSED, 0, src1, src1w, src2, src2w));




 return sljit_emit_jump(compiler, condition | (type & (SLJIT_REWRITABLE_JUMP | SLJIT_I32_OP)));
}
