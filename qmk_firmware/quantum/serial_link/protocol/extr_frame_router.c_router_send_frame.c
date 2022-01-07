
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint16_t ;


 int DOWN_LINK ;
 int UP_LINK ;
 scalar_t__ is_master ;
 int validator_send_frame (int ,int*,size_t) ;

void router_send_frame(uint8_t destination, uint8_t* data, uint16_t size) {
    if (destination == 0) {
        if (!is_master) {
            data[size] = 1;
            validator_send_frame(UP_LINK, data, size + 1);
        }
    } else {
        if (is_master) {
            data[size] = destination;
            validator_send_frame(DOWN_LINK, data, size + 1);
        }
    }
}
