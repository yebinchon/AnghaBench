
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
typedef int uint16_t ;
struct TYPE_5__ {int (* _deselect ) () ;int (* _select ) () ;} ;
struct TYPE_6__ {int (* _write_bytes ) (int*,int) ;} ;
struct TYPE_7__ {TYPE_2__ SPI; } ;
struct TYPE_8__ {TYPE_1__ CS; TYPE_3__ IF; } ;


 TYPE_4__ WIZCHIP ;
 int WIZCHIP_CRITICAL_ENTER () ;
 int WIZCHIP_CRITICAL_EXIT () ;
 int stub1 () ;
 int stub2 (int*,int) ;
 int stub3 (int*,int) ;
 int stub4 () ;

void WIZCHIP_WRITE_BUF(uint32_t AddrSel, uint8_t* pBuf, uint16_t len) {
    WIZCHIP_CRITICAL_ENTER();
    WIZCHIP.CS._select();

    uint8_t spi_data[4] = {
        AddrSel >> 8,
        AddrSel,
        0x80 | ((len >> 8) & 0x7f),
        len & 0xff,
    };
    WIZCHIP.IF.SPI._write_bytes(spi_data, 4);
    WIZCHIP.IF.SPI._write_bytes(pBuf, len);

    WIZCHIP.CS._deselect();
    WIZCHIP_CRITICAL_EXIT();
}
