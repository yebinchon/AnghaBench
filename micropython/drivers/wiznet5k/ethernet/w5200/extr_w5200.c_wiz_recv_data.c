
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ RBASE (int ) ;
 scalar_t__ RMASK ;
 scalar_t__ RSIZE ;
 int WIZCHIP_READ_BUF (scalar_t__,int *,scalar_t__) ;
 scalar_t__ getSn_RX_RD (int ) ;
 int setSn_RX_RD (int ,scalar_t__) ;

void wiz_recv_data(uint8_t sn, uint8_t *wizdata, uint16_t len) {
    if (len == 0) {
        return;
    }

    uint16_t ptr = getSn_RX_RD(sn);
    uint16_t offset = ptr & RMASK;
    uint16_t addr = RBASE(sn) + offset;

    if (offset + len > RSIZE) {

        uint16_t size = RSIZE - offset;
        WIZCHIP_READ_BUF(addr, wizdata, size);
        WIZCHIP_READ_BUF(RBASE(sn), wizdata + size, len - size);
    } else {
        WIZCHIP_READ_BUF(addr, wizdata, len);
    }

    ptr += len;
    setSn_RX_RD(sn, ptr);
}
