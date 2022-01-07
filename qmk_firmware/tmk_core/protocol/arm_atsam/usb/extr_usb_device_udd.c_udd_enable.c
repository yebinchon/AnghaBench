
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_config {int source_generator; } ;


 int UDD_CLOCK_GEN ;
 int UDD_STATE_SUSPEND ;
 int USB ;
 int __DMB () ;
 int __disable_irq () ;
 int __get_PRIMASK () ;
 int __set_PRIMASK (int ) ;
 int udd_attach () ;
 int udd_sleep_mode (int ) ;
 int udd_wait_clock_ready () ;
 int usb_device ;
 int usb_enable (int *) ;
 int usb_get_config_defaults (struct usb_config*) ;
 int usb_init (int *,int ,struct usb_config*) ;

void udd_enable(void) {
    uint32_t irqflags;


    irqflags = __get_PRIMASK();
    __disable_irq();
    __DMB();

    struct usb_config config_usb;


    usb_get_config_defaults(&config_usb);
    config_usb.source_generator = UDD_CLOCK_GEN;
    usb_init(&usb_device, USB, &config_usb);


    usb_enable(&usb_device);


    udd_wait_clock_ready();

    udd_sleep_mode(UDD_STATE_SUSPEND);



    udd_attach();


    __DMB();
    __set_PRIMASK(irqflags);
}
