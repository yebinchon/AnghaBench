
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int series; char* mac; } ;


 TYPE_1__* OTP ;
 int memcpy (int*,char*,int) ;
 int mp_hal_generate_laa_mac (int,int*) ;

void mp_hal_get_mac(int idx, uint8_t buf[6]) {

    if (OTP->series == 0x00d1 && OTP->mac[0] == 'H' && OTP->mac[1] == 'J' && OTP->mac[2] == '0') {
        memcpy(buf, OTP->mac, 6);
        buf[5] += idx;
        return;
    }


    mp_hal_generate_laa_mac(idx, buf);
}
