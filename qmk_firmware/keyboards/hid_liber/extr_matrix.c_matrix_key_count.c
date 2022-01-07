
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ MATRIX_COLS ;
 scalar_t__ MATRIX_ROWS ;
 scalar_t__ matrix_is_on (scalar_t__,scalar_t__) ;

uint8_t matrix_key_count(void)
{
    uint8_t count = 0;
    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        for (uint8_t j = 0; j < MATRIX_COLS; j++) {
            if (matrix_is_on(i, j))
                count++;
        }
    }
    return count;
}
