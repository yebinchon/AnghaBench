
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isr_install () ;

void main() {
    isr_install();

    __asm__ __volatile__("int $2");
    __asm__ __volatile__("int $3");
}
