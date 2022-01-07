
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int SR; int CR; int AR; } ;
typedef scalar_t__ FLASH_Status ;


 int ASSERT (int ) ;
 int EraseTimeout ;
 TYPE_1__* FLASH ;
 scalar_t__ FLASH_COMPLETE ;
 int FLASH_CR_PER ;
 int FLASH_CR_STRT ;
 int FLASH_SR_EOP ;
 int FLASH_SR_PGERR ;
 int FLASH_SR_WRPERR ;
 scalar_t__ FLASH_TIMEOUT ;
 scalar_t__ FLASH_WaitForLastOperation (int ) ;
 int IS_FLASH_ADDRESS (int ) ;

FLASH_Status FLASH_ErasePage(uint32_t Page_Address) {
    FLASH_Status status = FLASH_COMPLETE;

    ASSERT(IS_FLASH_ADDRESS(Page_Address));

    status = FLASH_WaitForLastOperation(EraseTimeout);

    if (status == FLASH_COMPLETE) {

        FLASH->CR |= FLASH_CR_PER;
        FLASH->AR = Page_Address;
        FLASH->CR |= FLASH_CR_STRT;


        status = FLASH_WaitForLastOperation(EraseTimeout);
        if (status != FLASH_TIMEOUT) {

            FLASH->CR &= ~FLASH_CR_PER;
        }
        FLASH->SR = (FLASH_SR_EOP | FLASH_SR_PGERR | FLASH_SR_WRPERR);
    }

    return status;
}
