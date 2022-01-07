
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYS_CLK_INIT ;


 int OSC_FRC_DIV_2 ;
 int OSC_ID_0 ;
 int PLIB_OSC_FRCDivisorSelect (int ,int ) ;
 int PLIB_OSC_PBClockDivisorSet (int ,int ,int) ;
 int SYS_DEVCON_SystemLock () ;
 int SYS_DEVCON_SystemUnlock () ;

void SYS_CLK_Initialize( const SYS_CLK_INIT const * clkInit )
{
    SYS_DEVCON_SystemUnlock ( );

    PLIB_OSC_FRCDivisorSelect( OSC_ID_0, OSC_FRC_DIV_2);


    PLIB_OSC_PBClockDivisorSet (OSC_ID_0, 0, 1 );







    SYS_DEVCON_SystemLock ( );
}
