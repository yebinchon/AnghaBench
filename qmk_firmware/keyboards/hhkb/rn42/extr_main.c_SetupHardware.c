
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int MCUSR ;
 int PORTD ;
 int USB_Device_EnableSOFEvents () ;
 int USB_Disable () ;
 int USB_Init () ;
 int WDRF ;
 int clock_div_1 ;
 int clock_prescale_set (int ) ;
 int print_set_sendchar (int ) ;
 int sendchar_func ;
 int wdt_disable () ;

__attribute__((used)) static void SetupHardware(void)
{

    MCUSR &= ~(1 << WDRF);
    wdt_disable();


    clock_prescale_set(clock_div_1);


    USB_Disable();

    USB_Init();


    USB_Device_EnableSOFEvents();
    print_set_sendchar(sendchar_func);


    DDRD |= (1<<0);
    PORTD |= (1<<0);
    DDRD &= ~(1<<1);
    PORTD |= (1<<1);
}
