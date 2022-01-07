
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_PRESCALE (int ) ;
 int _delay_ms (int) ;
 int bluefruit_driver () ;
 int dprintf (char*) ;
 int host_set_driver (int ) ;
 int keyboard_init () ;
 int keyboard_setup () ;
 int keyboard_task () ;
 int print_set_sendchar (int ) ;
 int sendchar ;
 int serial_init () ;

int main(void) {
    CPU_PRESCALE(0);







    print_set_sendchar(sendchar);





    keyboard_setup();

    dprintf("Initializing keyboard...\n");
    keyboard_init();
    dprintf("Setting host driver to bluefruit...\n");
    host_set_driver(bluefruit_driver());

    dprintf("Initializing serial...\n");
    serial_init();
    _delay_ms(1000);

    dprintf("Starting main loop");
    while (1) {
        keyboard_task();
    }
}
