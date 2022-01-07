
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int FLASH_TYPEPROGRAM_DOUBLEWORD ;
 int FLASH_TYPEPROGRAM_FLASHWORD ;
 int FLASH_TYPEPROGRAM_WORD ;
 int HAL_FLASH_Lock () ;
 scalar_t__ HAL_FLASH_Program (int ,int,int const) ;
 scalar_t__ HAL_OK ;

void flash_write(uint32_t flash_dest, const uint32_t *src, uint32_t num_word32) {
    for (int i = 0; i < num_word32; i++) {
        if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, flash_dest, *src) != HAL_OK) {

            HAL_FLASH_Lock();
            return;
        }
        flash_dest += 4;
        src += 1;
    }




    HAL_FLASH_Lock();
}
