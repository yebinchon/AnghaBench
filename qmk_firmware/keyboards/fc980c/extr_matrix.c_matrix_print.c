
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ MATRIX_ROWS ;
 int bitrev (int ) ;
 int bitrev16 (int ) ;
 int bitrev32 (int ) ;
 int matrix_get_row (scalar_t__) ;
 scalar_t__ matrix_has_ghost_in_row (scalar_t__) ;
 int print (char*) ;
 char* xprintf (char*,scalar_t__,int ,char*) ;

void matrix_print(void)
{

    print("r/c 01234567\n");






    for (uint8_t row = 0; row < MATRIX_ROWS; row++) {


        xprintf("%02X: %08b%s\n", row, bitrev(matrix_get_row(row)),
        ""

        );
    }
}
