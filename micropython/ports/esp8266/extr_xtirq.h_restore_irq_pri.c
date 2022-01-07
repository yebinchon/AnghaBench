
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline void restore_irq_pri(uint32_t ps) {
    __asm__ volatile ("wsr %0, ps; rsync" :: "a" (ps));
}
