
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int bitrev (int ) ;
 int matrix_get_row (scalar_t__) ;
 scalar_t__ matrix_rows () ;
 int print (char*) ;
 int xprintf (char*,scalar_t__,int ) ;

void matrix_print(void)
{
    print("\nr/c 01234567\n");
    for (uint8_t row = 0; row < matrix_rows(); row++) {
        xprintf("%02X: %08b\n", row, bitrev(matrix_get_row(row)));
    }
}
