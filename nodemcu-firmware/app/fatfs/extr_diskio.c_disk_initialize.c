
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSTATUS ;
typedef int BYTE ;


 int STA_NOINIT ;
 int m_status ;
 scalar_t__ platform_sdcard_init (int,int ) ;

DSTATUS disk_initialize (
 BYTE pdrv
)
{
  int result;

  if (platform_sdcard_init( 1, pdrv )) {
    m_status &= ~STA_NOINIT;
  }

  return m_status;
}
