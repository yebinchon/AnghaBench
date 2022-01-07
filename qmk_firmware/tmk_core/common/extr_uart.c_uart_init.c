
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int F_CPU ;
 int RXCIE0 ;
 int RXEN0 ;
 int TXEN0 ;
 int U2X0 ;
 int UBRR0 ;
 int UCSR0A ;
 int UCSR0B ;
 int UCSR0C ;
 int UCSZ00 ;
 int UCSZ01 ;
 int cli () ;
 scalar_t__ rx_buffer_head ;
 scalar_t__ rx_buffer_tail ;
 int sei () ;
 scalar_t__ tx_buffer_head ;
 scalar_t__ tx_buffer_tail ;

void uart_init(uint32_t baud) {
    cli();
    UBRR0 = (F_CPU / 4 / baud - 1) / 2;
    UCSR0A = (1 << U2X0);
    UCSR0B = (1 << RXEN0) | (1 << TXEN0) | (1 << RXCIE0);
    UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);
    tx_buffer_head = tx_buffer_tail = 0;
    rx_buffer_head = rx_buffer_tail = 0;
    sei();
}
