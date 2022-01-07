
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int size; } ;


 TYPE_1__* flash_rom_getinfo () ;

uint8_t flash_rom_get_size_type(void)
{
    return flash_rom_getinfo()->size;
}
