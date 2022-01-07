
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int KEYR; } ;


 TYPE_1__* FLASH ;
 int FLASH_KEY1 ;
 int FLASH_KEY2 ;

void FLASH_Unlock(void) {

    FLASH->KEYR = FLASH_KEY1;
    FLASH->KEYR = FLASH_KEY2;
}
