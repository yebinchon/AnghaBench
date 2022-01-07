
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 size_t RBUF_SIZE ;
 int* rbuf ;
 int rbuf_check_rts_lo () ;
 size_t rbuf_head ;
 size_t rbuf_tail ;

int16_t serial_recv2(void) {
    uint8_t data = 0;
    if (rbuf_head == rbuf_tail) {
        return -1;
    }

    data = rbuf[rbuf_tail];
    rbuf_tail = (rbuf_tail + 1) % RBUF_SIZE;
    rbuf_check_rts_lo();
    return data;
}
