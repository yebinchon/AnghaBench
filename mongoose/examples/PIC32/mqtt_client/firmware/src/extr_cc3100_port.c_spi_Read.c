
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int spiObjectIdx0; } ;
typedef int Fd_t ;


 int AssertCS () ;
 int DRV_SPI0_BufferAddWriteRead (int *,unsigned char*,int) ;
 int DRV_SPI_Tasks (int ) ;
 int DeassertCS () ;
 int SYS_PRINT (char*) ;
 int memset (int *,int,int) ;
 TYPE_1__ sysObj ;

int spi_Read(Fd_t fd, unsigned char *pBuff, int len) {
  if (len > 512) {
    SYS_PRINT("BUFFER TOO SMALL");
    return 0;
  }
  uint8_t dummy[512];
  memset(dummy, 0xFF, len);
  AssertCS();
  DRV_SPI0_BufferAddWriteRead(dummy, pBuff, len);
  DRV_SPI_Tasks(sysObj.spiObjectIdx0);
  DeassertCS();
  return len;
}
