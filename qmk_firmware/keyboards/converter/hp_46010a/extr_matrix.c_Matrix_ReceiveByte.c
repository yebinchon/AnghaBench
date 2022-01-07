
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MATRIX_COLS ;
 int PINB ;
 int SCLK_increment () ;
 int SDATA ;

__attribute__((used)) inline
static
uint8_t Matrix_ReceiveByte (void) {
    uint8_t received = 0 ;
    uint8_t temp = 0 ;
    for ( uint8_t bit = 0; bit < MATRIX_COLS; ++bit ) {

        SCLK_increment();
        temp = (PINB & SDATA) << 4 ;
        received |= temp >> bit ;
    }

    return received ;
}
