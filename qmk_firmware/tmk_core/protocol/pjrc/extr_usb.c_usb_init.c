
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EORSTE ;
 int HW_CONFIG () ;
 int PLLCSR ;
 int PLL_CONFIG () ;
 int PLOCK ;
 int SOFE ;
 int SUSPE ;
 scalar_t__ UDCON ;
 int UDIEN ;
 int USB_CONFIG () ;
 int USB_FREEZE () ;
 int WAKEUPE ;
 int sei () ;
 int suspend ;
 scalar_t__ usb_configuration ;

void usb_init(void) {
    HW_CONFIG();
    USB_FREEZE();
    PLL_CONFIG();
    while (!(PLLCSR & (1 << PLOCK)))
        ;
    USB_CONFIG();
    UDCON = 0;
    usb_configuration = 0;
    suspend = 0;
    UDIEN = (1 << EORSTE) | (1 << SOFE) | (1 << SUSPE) | (1 << WAKEUPE);
    sei();
}
