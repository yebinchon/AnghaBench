
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fd_t ;


 int g_SpiFd ;
 int spi_Read_CPU (unsigned char*,int) ;

int spi_Read(Fd_t fd, unsigned char *pBuff, int len)
{
    if (fd != 1 || g_SpiFd != 1) {
        return -1;
    }

    return spi_Read_CPU(pBuff, len);
}
