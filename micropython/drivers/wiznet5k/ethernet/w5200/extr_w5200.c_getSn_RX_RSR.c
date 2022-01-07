
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 scalar_t__ Sn_RX_RSR (int ) ;
 int WIZCHIP_READ (scalar_t__) ;

uint16_t getSn_RX_RSR(uint8_t sn) {
    uint16_t val = 0, val1 = 0;
    do {
        val1 = (WIZCHIP_READ(Sn_RX_RSR(sn)) << 8) | WIZCHIP_READ(Sn_RX_RSR(sn) + 1);
        if (val1 != 0) {
            val = (WIZCHIP_READ(Sn_RX_RSR(sn)) << 8) | WIZCHIP_READ(Sn_RX_RSR(sn) + 1);
        }
    } while (val != val1);
    return val;
}
