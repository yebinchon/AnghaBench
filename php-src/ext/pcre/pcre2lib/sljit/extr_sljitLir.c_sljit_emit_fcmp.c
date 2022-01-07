
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_jump {int dummy; } ;
struct sljit_compiler {int skip_checks; } ;
typedef int sljit_sw ;
typedef int sljit_s32 ;


 int CHECK_ERROR_PTR () ;
 int CHECK_PTR (int ) ;
 int SLJIT_CMP_F64 ;
 int SLJIT_I32_OP ;
 int VARIABLE_FLAG_SHIFT ;
 int check_sljit_emit_fcmp (struct sljit_compiler*,int,int,int ,int,int ) ;
 int sljit_emit_fop1 (struct sljit_compiler*,int,int,int ,int,int ) ;
 struct sljit_jump* sljit_emit_jump (struct sljit_compiler*,int) ;

struct sljit_jump* sljit_emit_fcmp(struct sljit_compiler *compiler, sljit_s32 type,
 sljit_s32 src1, sljit_sw src1w,
 sljit_s32 src2, sljit_sw src2w)
{
 CHECK_ERROR_PTR();
 CHECK_PTR(check_sljit_emit_fcmp(compiler, type, src1, src1w, src2, src2w));





 sljit_emit_fop1(compiler, SLJIT_CMP_F64 | ((type & 0xff) << VARIABLE_FLAG_SHIFT) | (type & SLJIT_I32_OP), src1, src1w, src2, src2w);





 return sljit_emit_jump(compiler, type);
}
