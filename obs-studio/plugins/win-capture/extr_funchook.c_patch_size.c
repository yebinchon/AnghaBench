
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_hook {scalar_t__ is_64bit_jump; } ;


 size_t JMP_32_SIZE ;
 size_t JMP_64_SIZE ;

__attribute__((used)) static inline size_t patch_size(struct func_hook *hook)
{
 return hook->is_64bit_jump ? JMP_64_SIZE : JMP_32_SIZE;
}
