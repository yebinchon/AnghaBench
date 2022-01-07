
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PS2_ERR_NODATA ;
 int PS2_ERR_NONE ;
 int pbuf_dequeue () ;
 scalar_t__ pbuf_has_data () ;
 int ps2_error ;

uint8_t ps2_host_recv(void) {
    if (pbuf_has_data()) {
        ps2_error = PS2_ERR_NONE;
        return pbuf_dequeue();
    } else {
        ps2_error = PS2_ERR_NODATA;
        return 0;
    }
}
