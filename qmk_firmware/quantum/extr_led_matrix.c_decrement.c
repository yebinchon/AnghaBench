
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ int16_t ;


 int MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MIN (int ,scalar_t__) ;

__attribute__((used)) static uint8_t decrement(uint8_t value, uint8_t step, uint8_t min, uint8_t max) {
    int16_t new_value = value;
    new_value -= step;
    return MIN(MAX(new_value, min), max);
}
