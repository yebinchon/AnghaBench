
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ int8_t ;


 scalar_t__ MATRIX_ROWS ;
 scalar_t__ bitpop16 (int ) ;
 int matrix_get_row (scalar_t__) ;

uint8_t matrix_key_count(void) {
    uint8_t count = 0;
    for (int8_t r = MATRIX_ROWS - 1; r >= 0; --r) {
        count += bitpop16(matrix_get_row(r));
    }
    return count;
}
