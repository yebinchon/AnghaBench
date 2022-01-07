
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int * row_pins ;
 int setPinInputHigh (int ) ;

__attribute__((used)) static void unselect_row(uint8_t row)
{
    setPinInputHigh(row_pins[row]);
}
