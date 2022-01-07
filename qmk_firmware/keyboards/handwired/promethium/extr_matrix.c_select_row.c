
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int PORTF ;
 int ROW_MASK ;
 int* row_bit ;

__attribute__((used)) static void select_row(uint8_t row)
{
    PORTF = row_bit[row] | (PORTF & ~ROW_MASK);
}
