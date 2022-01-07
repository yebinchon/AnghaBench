
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;


 scalar_t__ DOWN_LINK ;
 int SD1 ;
 int SD2 ;
 int sdWrite (int *,scalar_t__ const*,int ) ;

void send_data(uint8_t link, const uint8_t* data, uint16_t size) {
    if (link == DOWN_LINK) {
        sdWrite(&SD1, data, size);
    } else {
        sdWrite(&SD2, data, size);
    }
}
