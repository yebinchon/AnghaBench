
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int * col_pins ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

__attribute__((used)) static void select_col(uint8_t col)
{
    setPinOutput(col_pins[col]);
    writePinLow(col_pins[col]);
}
