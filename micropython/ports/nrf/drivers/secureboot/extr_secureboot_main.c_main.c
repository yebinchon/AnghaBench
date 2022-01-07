
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int configure_flash () ;
 int configure_peripherals () ;
 int configure_ram () ;
 int jump_to_non_secure () ;

int main(void) {
    configure_flash();
    configure_ram();
    configure_peripherals();

    jump_to_non_secure();

    while (1) {
 ;
    }

    return 0;
}
