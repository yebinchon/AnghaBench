
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int SYS_MODULE_INDEX ;


 char DRV_USART0_ReadByte () ;
 int DRV_USART0_ReceiverBufferIsEmpty () ;

ssize_t SYS_CONSOLE_Read(const SYS_MODULE_INDEX index, int fd, void *buf, size_t count )
{
    size_t numBytes = 0;
    char* pReadByte = (char*)buf;
 if( !DRV_USART0_ReceiverBufferIsEmpty() )
 {
  *pReadByte = DRV_USART0_ReadByte();

  numBytes++;
  pReadByte++;
    }

    return numBytes;
}
