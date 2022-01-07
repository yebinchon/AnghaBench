
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int RXCIE0 ;
 int RXEN0 ;
 int TXEN0 ;
 size_t TX_BUFFER_SIZE ;
 int UCSR0B ;
 int UDRIE0 ;
 size_t* tx_buffer ;
 int tx_buffer_head ;
 size_t tx_buffer_tail ;

void uart_putchar(uint8_t c) {
    uint8_t i;

    i = tx_buffer_head + 1;
    if (i >= TX_BUFFER_SIZE) i = 0;
    while (tx_buffer_tail == i)
        ;

    tx_buffer[i] = c;
    tx_buffer_head = i;
    UCSR0B = (1 << RXEN0) | (1 << TXEN0) | (1 << RXCIE0) | (1 << UDRIE0);

}
