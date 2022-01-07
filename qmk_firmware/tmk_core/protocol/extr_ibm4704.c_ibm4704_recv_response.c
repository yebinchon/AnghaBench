
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int _delay_ms (int) ;
 int rbuf_dequeue () ;
 int rbuf_has_data () ;

uint8_t ibm4704_recv_response(void) {
    while (!rbuf_has_data()) {
        _delay_ms(1);
    }
    return rbuf_dequeue();
}
