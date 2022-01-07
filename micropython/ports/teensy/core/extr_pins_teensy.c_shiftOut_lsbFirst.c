
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HIGH ;
 int LOW ;
 int digitalWrite (int,int) ;

void shiftOut_lsbFirst(uint8_t dataPin, uint8_t clockPin, uint8_t value)
{
        uint8_t mask;
        for (mask=0x01; mask; mask <<= 1) {
                digitalWrite(dataPin, value & mask);
                digitalWrite(clockPin, HIGH);
                digitalWrite(clockPin, LOW);
        }
}
