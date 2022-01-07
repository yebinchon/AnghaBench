
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MUX_RCV_BUF_SIZE ;
 char* rcv_buf ;
 int rcv_head ;
 int rcv_tail ;

__attribute__((used)) static void rcv_enq(char c) {
    uint8_t next = (rcv_head + 1) % MUX_RCV_BUF_SIZE;
    if (next != rcv_tail) {
        rcv_buf[rcv_head] = c;
        rcv_head = next;
    }
}
