
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRESULT ;
typedef int BYTE ;




 int RES_OK ;
 int RES_PARERR ;

DRESULT disk_ioctl (
 BYTE pdrv,
 BYTE cmd,
 void *buff
)
{
  switch (cmd) {
  case 128:
  case 129:
    return RES_OK;

  default:
    return RES_PARERR;
  }
}
