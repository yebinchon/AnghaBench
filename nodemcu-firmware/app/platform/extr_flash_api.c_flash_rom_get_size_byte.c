
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int size; } ;
 TYPE_1__* flash_rom_getinfo () ;

uint32_t flash_rom_get_size_byte(void)
{
    static uint32_t flash_size = 0;
    if (flash_size == 0)
    {
        switch (flash_rom_getinfo()->size)
        {
        case 134:

            flash_size = 256 * 1024;
            break;
        case 130:

            flash_size = 512 * 1024;
            break;
        case 128:

            flash_size = 1 * 1024 * 1024;
            break;
        case 136:

            flash_size = 2 * 1024 * 1024;
            break;
        case 133:

            flash_size = 4 * 1024 * 1024;
            break;
        case 135:

            flash_size = 2 * 1024 * 1024;
            break;
        case 131:

            flash_size = 4 * 1024 * 1024;
            break;
        case 132:

            flash_size = 4 * 1024 * 1024;
            break;
        case 129:

            flash_size = 8 * 1024 * 1024;
            break;
        case 137:

            flash_size = 16 * 1024 * 1024;
            break;
        default:

            flash_size = 512 * 1024;
            break;
        }
    }
    return flash_size;
}
