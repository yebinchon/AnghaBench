
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ SBASE (int ) ;
 scalar_t__ SMASK ;
 scalar_t__ SSIZE ;
 int WIZCHIP_WRITE_BUF (scalar_t__,int *,scalar_t__) ;
 scalar_t__ getSn_TX_WR (int ) ;
 int setSn_TX_WR (int ,scalar_t__) ;

void wiz_send_data(uint8_t sn, uint8_t *wizdata, uint16_t len) {
    if (len == 0) {
        return;
    }

    uint16_t ptr = getSn_TX_WR(sn);
    uint16_t offset = ptr & SMASK;
    uint32_t addr = offset + SBASE(sn);

    if (offset + len > SSIZE) {

        uint16_t size = SSIZE - offset;
        WIZCHIP_WRITE_BUF(addr, wizdata, size);
        WIZCHIP_WRITE_BUF(SBASE(sn), wizdata + size, len - size);
    } else {
        WIZCHIP_WRITE_BUF(addr, wizdata, len);
    }

    ptr += len;
    setSn_TX_WR(sn, ptr);
}
