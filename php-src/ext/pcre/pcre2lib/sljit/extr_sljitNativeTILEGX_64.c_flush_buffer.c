
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int dummy; } ;
typedef int sljit_s32 ;


 int FAIL_IF (int ) ;
 int SLJIT_SUCCESS ;
 scalar_t__ inst_buf_index ;
 int update_buffer (struct sljit_compiler*) ;

__attribute__((used)) static sljit_s32 flush_buffer(struct sljit_compiler *compiler)
{
 while (inst_buf_index != 0) {
  FAIL_IF(update_buffer(compiler));
 }
 return SLJIT_SUCCESS;
}
