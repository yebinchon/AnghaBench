
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MATRIX_COLS ;
 int SCLK_increment () ;

__attribute__((used)) inline
static
void Matrix_ThrowByte(void) {

    for ( uint8_t bit = 0; bit < MATRIX_COLS - 1; ++bit ) {

        SCLK_increment();
    }

    return ;
}
