
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int matrix_row_t ;


 int * matrix ;

inline
matrix_row_t matrix_get_row(uint8_t row)
{
 return matrix[row];
}
