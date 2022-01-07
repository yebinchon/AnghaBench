
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int COL (int ) ;
 size_t ROW (int ) ;
 int* matrix ;
 scalar_t__ matrix_is_on (size_t,int) ;

__attribute__((used)) inline
static void matrix_break(uint8_t code)
{
    if (matrix_is_on(ROW(code), COL(code))) {
        matrix[ROW(code)] &= ~(1<<COL(code));
    }
}
