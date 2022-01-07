
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int pbuf_dequeue () ;
 scalar_t__ pbuf_has_data () ;

uint8_t xt_host_recv(void) {
    if (pbuf_has_data()) {
        return pbuf_dequeue();
    } else {
        return 0;
    }
}
