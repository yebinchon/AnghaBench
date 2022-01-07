
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLJIT_FREE_EXEC (void*) ;

void sljit_free_code(void* code)
{
 SLJIT_FREE_EXEC(code);
}
