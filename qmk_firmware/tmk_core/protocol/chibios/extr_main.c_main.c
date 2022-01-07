
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int host_driver_t ;
struct TYPE_4__ {scalar_t__ state; } ;


 int EEPROM_Init () ;
 scalar_t__ USB_ACTIVE ;
 TYPE_1__ USB_DRIVER ;
 scalar_t__ USB_SUSPENDED ;
 int chSysInit () ;
 int chibios_driver ;
 int console_task () ;
 int * get_serial_link_driver () ;
 int halInit () ;
 int host_set_driver (int *) ;
 int init_printf (int *,int ) ;
 int init_serial_link () ;
 int init_usb_driver (TYPE_1__*) ;
 scalar_t__ is_serial_link_connected () ;
 int keyboard_init () ;
 int keyboard_setup () ;
 int keyboard_task () ;
 int mousekey_send () ;
 int print (char*) ;
 int raw_hid_task () ;
 int rgblight_task () ;
 int send_keyboard_report () ;
 int sendchar_pf ;
 int serial_link_update () ;
 int setup_midi () ;
 int sleep_led_init () ;
 int suspend_power_down () ;
 scalar_t__ suspend_wakeup_condition () ;
 int usbWakeupHost (TYPE_1__*) ;
 int virtser_task () ;
 int visualizer_init () ;
 int visualizer_resume () ;
 int visualizer_suspend () ;
 int wait_ms (int) ;

int main(void) {

    halInit();
    chSysInit();
    keyboard_setup();


    init_usb_driver(&USB_DRIVER);


    init_printf(((void*)0), sendchar_pf);
    host_driver_t *driver = ((void*)0);


    while (1) {






        driver = &chibios_driver;
        break;
        wait_ms(50);
    }






    wait_ms(50);

    print("USB configured.\n");


    keyboard_init();
    host_set_driver(driver);





    print("Keyboard start.\n");


    while (1) {

        if (USB_DRIVER.state == USB_SUSPENDED) {
            print("[s]");



            while (USB_DRIVER.state == USB_SUSPENDED) {




                suspend_power_down();

                if (suspend_wakeup_condition()) {
                    usbWakeupHost(&USB_DRIVER);
                }
            }


            send_keyboard_report();







        }


        keyboard_task();
    }
}
