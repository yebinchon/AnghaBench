
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DCD_PIN ;
 int GND_PIN ;
 int PULLDOWN_PIN ;
 int PinDirectionInput ;
 int PinDirectionOutput ;
 int PinLevelLow ;
 int RTS_PIN ;
 int VCC_PIN ;
 int digitalWrite (int ,int ) ;
 int pinMode (int ,int ) ;

void pins_init(void) {



    pinMode(VCC_PIN, PinDirectionOutput);
    digitalWrite(VCC_PIN, PinLevelLow);
    pinMode(DCD_PIN, PinDirectionInput);
    pinMode(RTS_PIN, PinDirectionInput);
}
