
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCUSR ;
 int USB_Device_EnableSOFEvents () ;
 int USB_Disable () ;
 int USB_Init () ;
 int WDRF ;
 int clock_div_1 ;
 int clock_div_2 ;
 int clock_prescale_set (int ) ;
 int print_set_sendchar (int ) ;
 int sendchar ;
 int wdt_disable () ;

__attribute__((used)) static void LUFA_setup(void)
{

    MCUSR &= ~(1 << WDRF);
    wdt_disable();





    clock_prescale_set(clock_div_1);



    USB_Disable();

    USB_Init();


    USB_Device_EnableSOFEvents();
    print_set_sendchar(sendchar);
}
