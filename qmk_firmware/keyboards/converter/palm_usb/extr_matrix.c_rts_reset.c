
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int PinDirectionOutput ;
 scalar_t__ PinLevelHigh ;
 scalar_t__ PinLevelLow ;
 int RTS_PIN ;
 int _delay_ms (int) ;
 scalar_t__ digitalRead (int ) ;
 int digitalWrite (int ,scalar_t__) ;
 int pinMode (int ,int ) ;

uint8_t rts_reset(void) {
    static uint8_t firstread ;





    firstread=digitalRead(RTS_PIN);


    pinMode(RTS_PIN, PinDirectionOutput);

    if (firstread == PinLevelHigh) {
        digitalWrite(RTS_PIN, PinLevelLow);
    }
     _delay_ms(10);
    digitalWrite(RTS_PIN, PinLevelHigh);
 _delay_ms(5);

 return 1;
}
