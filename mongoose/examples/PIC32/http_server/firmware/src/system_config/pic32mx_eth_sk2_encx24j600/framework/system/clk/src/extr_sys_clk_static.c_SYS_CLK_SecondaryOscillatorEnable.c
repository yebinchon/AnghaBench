
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSC_ID_0 ;
 int PLIB_OSC_SecondaryEnable (int ) ;
 int PLIB_OSC_SecondaryIsEnabled (int ) ;
 int SYS_DEVCON_SystemLock () ;
 int SYS_DEVCON_SystemUnlock () ;

void SYS_CLK_SecondaryOscillatorEnable ( void )
{

    if (!PLIB_OSC_SecondaryIsEnabled(OSC_ID_0))
    {

        SYS_DEVCON_SystemUnlock();

        PLIB_OSC_SecondaryEnable(OSC_ID_0);

        SYS_DEVCON_SystemLock();
    }
}
