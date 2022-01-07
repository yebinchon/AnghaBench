
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRC ;
 scalar_t__ MCUSR ;
 int PCICR ;
 int PCMSK1 ;
 int PORTC ;
 int WDTO_60MS ;
 int WD_OFF ;
 int WD_SET (int ) ;
 int _delay_ms (int) ;
 int clock_div_1 ;
 int clock_prescale_set (int ) ;
 scalar_t__ console () ;
 int disable_vusb () ;
 scalar_t__ host_get_driver () ;
 int host_set_driver (scalar_t__) ;
 int insomniac ;
 int iwrap_call () ;
 int iwrap_check_connection () ;
 scalar_t__ iwrap_driver () ;
 int iwrap_init () ;
 int iwrap_sleep () ;
 int keyboard_init () ;
 int keyboard_task () ;
 int last_timer ;
 scalar_t__ matrix_is_modified () ;
 int print (char*) ;
 int sleep (int ) ;
 int sleeping ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int uart_init (int) ;
 int usbPoll () ;
 scalar_t__ vusb_driver () ;
 int vusb_transfer_keyboard () ;

int main(void) {
    MCUSR = 0;
    clock_prescale_set(clock_div_1);
    WD_SET(WD_OFF);
    uart_init(115200);
    keyboard_init();
    print("\nSend BREAK for UART Console Commands.\n");


    print("suart init\n");


    PORTC |= (1 << 4);
    DDRC |= (1 << 4);

    PORTC |= (1 << 5);
    DDRC &= ~(1 << 5);

    PCMSK1 = 0b00100000;
    PCICR = 0b00000010;

    host_set_driver(iwrap_driver());

    print("iwrap_init()\n");
    iwrap_init();
    iwrap_call();

    last_timer = timer_read();
    while (1) {



        keyboard_task();




        if (matrix_is_modified() || console()) {
            last_timer = timer_read();
            sleeping = 0;
        } else if (!sleeping && timer_elapsed(last_timer) > 4000) {
            sleeping = 1;
            iwrap_check_connection();
        }


        if (host_get_driver() == iwrap_driver()) {
            if (sleeping && !insomniac) {
                _delay_ms(1);
                iwrap_sleep();
                sleep(WDTO_60MS);
            }
        }
    }
}
