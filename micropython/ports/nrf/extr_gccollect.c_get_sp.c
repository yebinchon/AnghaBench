
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline uintptr_t get_sp(void) {
    uintptr_t result;
    __asm__ ("mov %0, sp\n" : "=r" (result) );
    return result;
}
