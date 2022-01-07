
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DWORD ;
typedef int DRESULT ;
typedef int BYTE ;


 int RES_ERROR ;
 int RES_OK ;
 int platform_sdcard_read_block (int ,int ,int *) ;
 int platform_sdcard_read_blocks (int ,int ,int,int *) ;

DRESULT disk_read (
 BYTE pdrv,
 BYTE *buff,
 DWORD sector,
 UINT count
)
{
  if (count == 1) {
    if (! platform_sdcard_read_block( pdrv, sector, buff )) {
      return RES_ERROR;
    }
  } else {
    if (! platform_sdcard_read_blocks( pdrv, sector, count, buff )) {
      return RES_ERROR;
    }
  }

  return RES_OK;
}
