
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTB ;
 int RESET ;
 int _delay_us (int) ;

__attribute__((used)) inline
static
void Matrix_Reset(void) {
    PORTB |= RESET ;
    _delay_us( 4 ) ;
    PORTB &= ~RESET ;

    return ;
}
