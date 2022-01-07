
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_SPI_BUFFER_HANDLE ;
typedef int DRV_SPI_BUFFER_EVENT_HANDLER ;
typedef int DRV_HANDLE ;


 int DRV_SPI0_BufferAddWriteRead2 (void*,size_t,void*,size_t,int ,void*,int *) ;
 int DRV_SPI_BUFFER_HANDLE_INVALID ;


DRV_SPI_BUFFER_HANDLE DRV_SPI_BufferAddWriteRead2 ( DRV_HANDLE handle, void *txBuffer, size_t txSize,void *rxBuffer, size_t rxSize,DRV_SPI_BUFFER_EVENT_HANDLER completeCB,void * context, DRV_SPI_BUFFER_HANDLE * jobHandle)
{
    uintptr_t instance;
    DRV_SPI_BUFFER_HANDLE returnValue;

    instance = handle & 0x00FF;

    switch(instance)
    {
        case 128:
        {
            returnValue = DRV_SPI0_BufferAddWriteRead2 ( txBuffer, txSize, rxBuffer, rxSize, completeCB, context, jobHandle);
            break;
        }
        default:
        {
            returnValue = DRV_SPI_BUFFER_HANDLE_INVALID;
            break;
        }
    }
    return returnValue;
}
