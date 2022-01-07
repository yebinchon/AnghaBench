
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_ROWS ;
 scalar_t__ bitpop32 (int ) ;
 int * matrix ;

uint8_t matrix_key_count(void) {
    uint8_t count = 0;
    for (uint8_t row = 0; row < MATRIX_ROWS; row++)
        count += bitpop32(matrix[row]);
    return count;
}
