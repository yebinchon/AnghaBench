
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) __attribute__(( always_inline )) static inline void __WFI(void) {
  __asm volatile ("wfi");
}
