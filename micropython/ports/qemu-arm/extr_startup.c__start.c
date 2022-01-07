
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int uart_init () ;

void _start(void) {

    uart_init();


    extern int main();
    main(0, 0);


    exit(0);
}
