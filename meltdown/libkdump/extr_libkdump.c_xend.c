
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __attribute__((always_inline)) inline void xend(void) {

  asm volatile(".byte 0x0f; .byte 0x01; .byte 0xd5" ::: "memory");
}
