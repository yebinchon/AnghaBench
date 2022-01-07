
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MUX_RCV_BUF_SIZE ;
 char* rcv_buf ;
 int rcv_head ;
 int rcv_tail ;

__attribute__((used)) static char rcv_deq(void) {
    char c = 0;
    if (rcv_head != rcv_tail) {
        c = rcv_buf[rcv_tail++];
        rcv_tail %= MUX_RCV_BUF_SIZE;
    }
    return c;
}
