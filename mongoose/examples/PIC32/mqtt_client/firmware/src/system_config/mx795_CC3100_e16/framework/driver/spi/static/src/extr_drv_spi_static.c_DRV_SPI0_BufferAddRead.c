
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_SPI_BUFFER_HANDLE ;
typedef int DRV_SPI_BUFFER_EVENT_HANDLER ;


 int DRV_SPI0_BufferAddRead2 (void*,size_t,int ,void*,int *) ;

DRV_SPI_BUFFER_HANDLE DRV_SPI0_BufferAddRead ( void *rxBuffer, size_t size, DRV_SPI_BUFFER_EVENT_HANDLER completeCB, void * context)
{
    return DRV_SPI0_BufferAddRead2(rxBuffer, size, completeCB, context, ((void*)0));
}
