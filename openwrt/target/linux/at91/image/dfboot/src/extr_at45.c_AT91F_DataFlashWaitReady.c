
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DataFlash_state; } ;
typedef int AT91S_DataFlashStatus ;
typedef TYPE_1__* AT91PS_DataflashDesc ;


 int AT91C_DATAFLASH_ERROR ;
 int AT91C_DATAFLASH_OK ;
 int AT91F_DataFlashGetStatus (TYPE_1__*) ;
 int IDLE ;

__attribute__((used)) static AT91S_DataFlashStatus AT91F_DataFlashWaitReady(
 AT91PS_DataflashDesc pDataFlashDesc,
 unsigned int timeout)
{
 pDataFlashDesc->DataFlash_state = IDLE;
        do {
                AT91F_DataFlashGetStatus(pDataFlashDesc);
                timeout--;
        }
        while(((pDataFlashDesc->DataFlash_state & 0x80) != 0x80) && (timeout > 0));

        if((pDataFlashDesc->DataFlash_state & 0x80) != 0x80)
                return AT91C_DATAFLASH_ERROR;

        return AT91C_DATAFLASH_OK;
}
