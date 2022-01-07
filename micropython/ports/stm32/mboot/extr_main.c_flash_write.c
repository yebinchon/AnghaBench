
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ const uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ base_address; scalar_t__ sector_size; } ;


 int FLASH_TYPEPROGRAM_FLASHWORD ;
 scalar_t__ HAL_FLASH_Program (int ,scalar_t__,scalar_t__ const) ;
 int HAL_FLASH_Unlock () ;
 scalar_t__ HAL_OK ;
 int TYPEPROGRAM_WORD ;
 TYPE_1__* flash_layout ;

__attribute__((used)) static int flash_write(uint32_t addr, const uint8_t *src8, size_t len) {
    if (addr >= flash_layout[0].base_address && addr < flash_layout[0].base_address + flash_layout[0].sector_size) {

        return -1;
    }

    const uint32_t *src = (const uint32_t*)src8;
    size_t num_word32 = (len + 3) / 4;
    HAL_FLASH_Unlock();
    for (size_t i = 0; i < num_word32; i++) {
        if (HAL_FLASH_Program(TYPEPROGRAM_WORD, addr, *src) != HAL_OK) {
            return -1;
        }
        addr += 4;
        src += 1;
    }





    return 0;
}
