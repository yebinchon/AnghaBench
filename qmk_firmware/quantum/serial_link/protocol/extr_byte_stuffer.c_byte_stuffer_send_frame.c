
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;


 int send_block (scalar_t__,scalar_t__*,scalar_t__*,scalar_t__) ;
 int send_data (scalar_t__,scalar_t__ const*,int) ;

void byte_stuffer_send_frame(uint8_t link, uint8_t* data, uint16_t size) {
    const uint8_t zero = 0;
    if (size > 0) {
        uint16_t num_non_zero = 1;
        uint8_t* end = data + size;
        uint8_t* start = data;
        while (data < end) {
            if (num_non_zero == 0xFF) {


                send_block(link, start, data, num_non_zero);
                start = data;
                num_non_zero = 1;
            } else {
                if (*data == 0) {

                    send_block(link, start, data, num_non_zero);
                    start = data + 1;
                    num_non_zero = 1;
                } else {
                    num_non_zero++;
                }
                ++data;
            }
        }
        send_block(link, start, data, num_non_zero);
        send_data(link, &zero, 1);
    }
}
