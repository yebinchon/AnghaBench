
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tcpip; int drvUsart0; int sysTmr; int sysDevcon; int sysConsole0; } ;


 int APP_Tasks () ;
 int DRV_USART_TasksError (int ) ;
 int DRV_USART_TasksReceive (int ) ;
 int DRV_USART_TasksTransmit (int ) ;
 int SYS_CMD_Tasks () ;
 int SYS_CONSOLE_Tasks (int ) ;
 int SYS_DEVCON_Tasks (int ) ;
 int SYS_TMR_Tasks (int ) ;
 int TCPIP_STACK_Task (int ) ;
 TYPE_1__ sysObj ;

void SYS_Tasks ( void )
{


    SYS_CMD_Tasks();
    SYS_CONSOLE_Tasks(sysObj.sysConsole0);
    SYS_DEVCON_Tasks(sysObj.sysDevcon);

    SYS_TMR_Tasks(sysObj.sysTmr);


    DRV_USART_TasksTransmit(sysObj.drvUsart0);
    DRV_USART_TasksReceive(sysObj.drvUsart0);
    DRV_USART_TasksError (sysObj.drvUsart0);



    TCPIP_STACK_Task(sysObj.tcpip);


    APP_Tasks();
}
