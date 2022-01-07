
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int rbuf_dequeue () ;
 scalar_t__ rbuf_has_data () ;

uint8_t ibm4704_recv(void) {
    if (rbuf_has_data()) {
        return rbuf_dequeue();
    } else {
        return -1;
    }
}
