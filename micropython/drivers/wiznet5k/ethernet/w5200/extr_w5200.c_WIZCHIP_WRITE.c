
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int (* _deselect ) () ;int (* _select ) () ;} ;
struct TYPE_5__ {int (* _write_bytes ) (int*,int) ;} ;
struct TYPE_6__ {TYPE_1__ SPI; } ;
struct TYPE_8__ {TYPE_3__ CS; TYPE_2__ IF; } ;


 TYPE_4__ WIZCHIP ;
 int WIZCHIP_CRITICAL_ENTER () ;
 int WIZCHIP_CRITICAL_EXIT () ;
 int stub1 () ;
 int stub2 (int*,int) ;
 int stub3 () ;

void WIZCHIP_WRITE(uint32_t AddrSel, uint8_t wb) {
    WIZCHIP_CRITICAL_ENTER();
    WIZCHIP.CS._select();

    uint8_t spi_data[5] = {
        AddrSel >> 8,
        AddrSel,
        0x80,
        0x01,
        wb,
    };
    WIZCHIP.IF.SPI._write_bytes(spi_data, 5);

    WIZCHIP.CS._deselect();
    WIZCHIP_CRITICAL_EXIT();
}
