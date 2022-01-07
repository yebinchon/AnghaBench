
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL_IF (int ) ;
 int failure_is_nesting () ;

__attribute__((used)) static int after_exec(void)
{
 asm __volatile__(
  "tbegin.;"
  "blt    1f;"
  "tsuspend.;"
  "1: ;"
  : : : "memory");

 FAIL_IF(failure_is_nesting());
 return 0;
}
