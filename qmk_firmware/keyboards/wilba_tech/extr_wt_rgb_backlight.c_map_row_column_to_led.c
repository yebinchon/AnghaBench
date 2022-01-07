
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_COLS ;
 size_t MATRIX_ROWS ;
 int ** g_map_row_column_to_led ;
 size_t pgm_read_byte (int *) ;

void map_row_column_to_led( uint8_t row, uint8_t column, uint8_t *led )
{
    *led = 255;
    if ( row < MATRIX_ROWS && column < MATRIX_COLS )
    {
        *led = pgm_read_byte(&g_map_row_column_to_led[row][column]);
    }
}
