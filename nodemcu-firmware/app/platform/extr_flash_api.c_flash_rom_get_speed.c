
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int speed; } ;






 TYPE_1__* flash_rom_getinfo () ;

uint32_t flash_rom_get_speed(void)
{
    uint32_t speed = 0;
    uint8_t spi_speed = flash_rom_getinfo()->speed;
    switch (spi_speed)
    {
    case 129:

        speed = 40000000;
        break;
    case 130:

        speed = 26700000;
        break;
    case 131:

        speed = 20000000;
        break;
    case 128:

        speed = 80000000;
        break;
    }
    return speed;
}
