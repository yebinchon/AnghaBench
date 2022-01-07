
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ RX_BUFFER_SIZE ;
 scalar_t__ rx_buffer_head ;
 scalar_t__ rx_buffer_tail ;

uint8_t uart_available(void) {
    uint8_t head, tail;

    head = rx_buffer_head;
    tail = rx_buffer_tail;
    if (head >= tail) return head - tail;
    return RX_BUFFER_SIZE + head - tail;
}
