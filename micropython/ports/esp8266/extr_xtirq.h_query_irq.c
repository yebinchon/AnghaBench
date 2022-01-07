
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t query_irq(void) {
    uint32_t ps;
    __asm__ volatile("rsr %0, ps" : "=a" (ps));
    return ps & 0xf;
}
