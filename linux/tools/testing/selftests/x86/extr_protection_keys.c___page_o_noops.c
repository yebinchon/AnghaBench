
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void __page_o_noops(void)
{

 asm(".rept 512 ; nopl 0x7eeeeeee(%eax) ; .endr");
}
