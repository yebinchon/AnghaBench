
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PinLevelHigh ;
 int PinLevelLow ;
 int VCC_PIN ;
 int _delay_ms (int) ;
 int digitalWrite (int ,int ) ;
 scalar_t__ disconnect_counter ;
 scalar_t__ handspring_handshake () ;
 int last_activity ;
 int print (char*) ;
 int timer_read () ;

uint8_t handspring_reset(void) {
    digitalWrite(VCC_PIN, PinLevelLow);
    _delay_ms(5);
    digitalWrite(VCC_PIN, PinLevelHigh);

    if ( handspring_handshake() ) {
        last_activity = timer_read();
        disconnect_counter=0;
        return 1;
    } else {
        print("-HSreset");
        return 0;
    }
}
