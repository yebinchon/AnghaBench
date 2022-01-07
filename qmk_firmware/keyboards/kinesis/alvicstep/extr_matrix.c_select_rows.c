
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PORTF ;

__attribute__((used)) static void select_rows(uint8_t row)
{

    PORTF |= row << 4;
}
