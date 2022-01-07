
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t RBUF_SIZE ;
 int * rbuf ;
 size_t rbuf_head ;
 size_t rbuf_tail ;

uint8_t serial_recv(void) {
    uint8_t data = 0;
    if (rbuf_head == rbuf_tail) {
        return 0;
    }

    data = rbuf[rbuf_tail];
    rbuf_tail = (rbuf_tail + 1) % RBUF_SIZE;
    return data;
}
