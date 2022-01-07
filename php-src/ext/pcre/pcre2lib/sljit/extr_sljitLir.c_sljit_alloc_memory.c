
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int dummy; } ;
typedef int sljit_s32 ;


 int CHECK_ERROR_PTR () ;
 void* ensure_abuf (struct sljit_compiler*,int) ;

void* sljit_alloc_memory(struct sljit_compiler *compiler, sljit_s32 size)
{
 CHECK_ERROR_PTR();






 if (size <= 0 || size > 64)
  return ((void*)0);
 size = (size + 3) & ~3;

 return ensure_abuf(compiler, size);
}
