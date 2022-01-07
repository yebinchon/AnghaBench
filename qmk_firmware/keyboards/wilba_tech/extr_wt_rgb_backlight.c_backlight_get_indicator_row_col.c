
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MATRIX_COLS ;
 int MATRIX_ROWS ;
 int map_row_column_to_led (int,int,int*) ;

void backlight_get_indicator_row_col( uint8_t index, uint8_t *row, uint8_t *column )
{
    if ( index == 255 || index == 254 )
    {

        *row = index;
        *column = 0;
        return;
    }
    for ( uint8_t r = 0; r < MATRIX_ROWS; r++ )
    {
        for ( uint8_t c = 0; c < MATRIX_COLS; c++ )
        {
            uint8_t i = 255;
            map_row_column_to_led( r, c, &i );
            if ( i == index )
            {
                *row = r;
                *column = c;
                return;
            }
        }
    }
}
