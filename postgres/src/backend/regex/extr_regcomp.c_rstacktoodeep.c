
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stack_is_too_deep () ;

__attribute__((used)) static int
rstacktoodeep(void)
{
 return stack_is_too_deep();
}
