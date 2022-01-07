
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SR; } ;
typedef int FLASH_Status ;


 TYPE_1__* FLASH ;
 int FLASH_BUSY ;
 int FLASH_COMPLETE ;
 int FLASH_ERROR_OPT ;
 int FLASH_ERROR_PG ;
 int FLASH_ERROR_WRP ;
 int FLASH_OBR_OPTERR ;
 int FLASH_SR_BSY ;
 int FLASH_SR_PGERR ;
 int FLASH_SR_WRPERR ;

FLASH_Status FLASH_GetStatus(void) {
    if ((FLASH->SR & FLASH_SR_BSY) == FLASH_SR_BSY) return FLASH_BUSY;

    if ((FLASH->SR & FLASH_SR_PGERR) != 0) return FLASH_ERROR_PG;

    if ((FLASH->SR & FLASH_SR_WRPERR) != 0) return FLASH_ERROR_WRP;

    if ((FLASH->SR & FLASH_OBR_OPTERR) != 0) return FLASH_ERROR_OPT;

    return FLASH_COMPLETE;
}
