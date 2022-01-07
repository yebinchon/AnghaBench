
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_keyboard () ;
 int init_timer (int) ;
 int isr_install () ;

void main() {
    isr_install();

    asm volatile("sti");
    init_timer(50);


    init_keyboard();
}
