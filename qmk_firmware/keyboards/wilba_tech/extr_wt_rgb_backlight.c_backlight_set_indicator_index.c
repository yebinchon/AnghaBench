
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ MATRIX_ROWS ;
 int map_row_column_to_led (scalar_t__,scalar_t__,scalar_t__*) ;

void backlight_set_indicator_index( uint8_t *index, uint8_t row, uint8_t column )
{
    if ( row >= MATRIX_ROWS )
    {

        *index = row;
    }
    else
    {
        map_row_column_to_led( row, column, index );
    }
}
