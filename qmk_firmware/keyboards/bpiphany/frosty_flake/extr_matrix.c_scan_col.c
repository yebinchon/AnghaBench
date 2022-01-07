
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int matrix_row_t ;


 int PINB ;
 int PINC ;

__attribute__((used)) static matrix_row_t scan_col(void) {
    return (
        (PINC&(1<<7) ? 0 : ((matrix_row_t)1<<0)) |
        (PINB&(1<<5) ? 0 : ((matrix_row_t)1<<1)) |
        (PINB&(1<<4) ? 0 : ((matrix_row_t)1<<2)) |
        (PINB&(1<<6) ? 0 : ((matrix_row_t)1<<3)) |
        (PINB&(1<<1) ? 0 : ((matrix_row_t)1<<4)) |
        (PINB&(1<<2) ? 0 : ((matrix_row_t)1<<5)) |
        (PINB&(1<<3) ? 0 : ((matrix_row_t)1<<6)) |
        (PINB&(1<<0) ? 0 : ((matrix_row_t)1<<7))
    );
}
