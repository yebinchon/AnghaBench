
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mode; } ;






 TYPE_1__* flash_rom_getinfo () ;

uint8_t flash_rom_get_mode(void)
{
    uint8_t mode = flash_rom_getinfo()->mode;
    switch (mode)
    {

    case 129:
        break;
    case 128:
        break;
    case 131:
        break;
    case 130:
        break;
    }
    return mode;
}
