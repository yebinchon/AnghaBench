
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int _delay_ms (int) ;
 int pbuf_dequeue () ;
 int pbuf_has_data () ;

uint8_t ps2_host_recv_response(void) {

    uint8_t retry = 25;
    while (retry-- && !pbuf_has_data()) {
        _delay_ms(1);
    }
    return pbuf_dequeue();
}
