
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_USART_TRANSFER_STATUS ;


 int DRV_USART_TRANSFER_STATUS_RECEIVER_DATA_PRESENT ;
 int DRV_USART_TRANSFER_STATUS_RECEIVER_EMPTY ;
 int DRV_USART_TRANSFER_STATUS_TRANSMIT_EMPTY ;
 int DRV_USART_TRANSFER_STATUS_TRANSMIT_FULL ;
 scalar_t__ PLIB_USART_ReceiverDataIsAvailable (int ) ;
 scalar_t__ PLIB_USART_TransmitterBufferIsFull (int ) ;
 scalar_t__ PLIB_USART_TransmitterIsEmpty (int ) ;
 int USART_ID_2 ;

DRV_USART_TRANSFER_STATUS DRV_USART0_TransferStatus( void )
{
    DRV_USART_TRANSFER_STATUS result = 0;


    if(PLIB_USART_ReceiverDataIsAvailable(USART_ID_2))
    {
        result|= DRV_USART_TRANSFER_STATUS_RECEIVER_DATA_PRESENT;
    }
    else
    {
        result|= DRV_USART_TRANSFER_STATUS_RECEIVER_EMPTY;
    }


    if(PLIB_USART_TransmitterIsEmpty(USART_ID_2))
    {
        result|= DRV_USART_TRANSFER_STATUS_TRANSMIT_EMPTY;
    }


    if(PLIB_USART_TransmitterBufferIsFull(USART_ID_2))
    {
        result|= DRV_USART_TRANSFER_STATUS_TRANSMIT_FULL;
    }

    return(result);
}
