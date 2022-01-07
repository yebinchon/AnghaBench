
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int SYS_MODULE_INDEX ;


 int DRV_USART0_WriteByte (char const) ;

ssize_t SYS_CONSOLE_Write(const SYS_MODULE_INDEX index, int fd, const char *buf, size_t count )
{
    size_t numBytes = 0;
    while( numBytes < count )
    {
        DRV_USART0_WriteByte(buf[numBytes++]);
    }
    return count;
}
