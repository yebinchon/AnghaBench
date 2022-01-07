
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int spiObjectIdx0; int sysDevcon; int sysConsole0; } ;


 int APP_Tasks () ;
 int DRV_SPI_Tasks (int ) ;
 int SYS_CONSOLE_Tasks (int ) ;
 int SYS_DEVCON_Tasks (int ) ;
 TYPE_1__ sysObj ;

void SYS_Tasks ( void )
{

    SYS_CONSOLE_Tasks(sysObj.sysConsole0);
    SYS_DEVCON_Tasks(sysObj.sysDevcon);


    DRV_SPI_Tasks(sysObj.spiObjectIdx0);




    APP_Tasks();
}
