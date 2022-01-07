
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRB ;
 int PORTB ;

void matrix_set_row_status(uint8_t row) {
    DDRB = (1 << row);
    PORTB = ~(1 << row);
}
