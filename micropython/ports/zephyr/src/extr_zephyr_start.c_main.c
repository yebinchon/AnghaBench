
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_init () ;
 int real_main () ;
 int zephyr_getchar_init () ;

void main(void) {



    zephyr_getchar_init();

    real_main();
}
