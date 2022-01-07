
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {scalar_t__ error; } ;


 scalar_t__ SLJIT_ERR_ALLOC_FAILED ;
 scalar_t__ SLJIT_SUCCESS ;

void sljit_set_compiler_memory_error(struct sljit_compiler *compiler)
{
 if (compiler->error == SLJIT_SUCCESS)
  compiler->error = SLJIT_ERR_ALLOC_FAILED;
}
