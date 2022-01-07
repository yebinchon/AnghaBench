
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ chip_size; } ;
typedef TYPE_1__ SpiFlashChip ;


 int SPIRead (scalar_t__,char*,int) ;
 int SPIWrite (scalar_t__,char*,int) ;
 int default_init_data ;
 int ets_printf (char*) ;
 int flashchip ;

void firmware_start(void) {


    SpiFlashChip *flash = (SpiFlashChip*)(&flashchip + 4);

    char buf[128];
    SPIRead(flash->chip_size - 4 * 0x1000, buf, sizeof(buf));





    bool inited = 0;
    for (int i = 0; i < sizeof(buf); i++) {
        if (buf[i] != 0xff) {
            inited = 1;
            break;
        }
    }

    if (!inited) {
        static char msg[] = "Writing init data\n";
        ets_printf(msg);
        SPIRead((uint32_t)&default_init_data - 0x40200000, buf, sizeof(buf));
        SPIWrite(flash->chip_size - 4 * 0x1000, buf, sizeof(buf));
    }

    asm("j call_user_start");
}
