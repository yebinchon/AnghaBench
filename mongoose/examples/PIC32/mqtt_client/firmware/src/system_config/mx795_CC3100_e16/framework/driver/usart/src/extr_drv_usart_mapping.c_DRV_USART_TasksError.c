
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYS_MODULE_OBJ ;


 int DRV_USART0_TasksError () ;


void DRV_USART_TasksError ( SYS_MODULE_OBJ object )
{
    switch(object)
    {
        case 128:
        {
            DRV_USART0_TasksError();
            break;
        }
        default:
        {
            break;
        }
    }
}
