
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int scratches; int saveds; scalar_t__ logical_local_size; } ;
typedef scalar_t__ sljit_sw ;
typedef int sljit_s32 ;


 scalar_t__ FUNCTION_CHECK_IS_FREG (int) ;
 int SLJIT_MEM1 (int ) ;
 int SLJIT_SP ;
 int function_check_src_mem (struct sljit_compiler*,int,scalar_t__) ;

__attribute__((used)) static sljit_s32 function_fcheck(struct sljit_compiler *compiler, sljit_s32 p, sljit_sw i)
{
 if (compiler->scratches == -1 || compiler->saveds == -1)
  return 0;

 if (FUNCTION_CHECK_IS_FREG(p))
  return (i == 0);

 if (p == SLJIT_MEM1(SLJIT_SP))
  return (i >= 0 && i < compiler->logical_local_size);

 return function_check_src_mem(compiler, p, i);
}
