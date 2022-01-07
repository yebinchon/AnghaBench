
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTB ;
 int SCLK ;
 int _delay_us (int) ;

__attribute__((used)) inline
static
void SCLK_increment(void) {
    PORTB &= ~SCLK ;
    _delay_us( 4 ) ;
    PORTB |= SCLK ;
    _delay_us( 4 ) ;

    return ;
}
