
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int DCD_PIN ;
 size_t MATRIX_ROWS ;
 scalar_t__ PinLevelHigh ;
 int VCC_PIN ;
 int _delay_ms (int) ;
 int debug_enable ;
 scalar_t__ digitalRead (int ) ;
 int digitalWrite (int ,scalar_t__) ;
 scalar_t__ handspring_handshake () ;
 int last_activity ;
 int* matrix ;
 int matrix_init_quantum () ;
 scalar_t__ palm_handshake () ;
 int pins_init () ;
 int print (char*) ;
 int rts_reset () ;
 int serial_init () ;
 int timer_read () ;

void matrix_init(void)
{
    debug_enable = 1;


    serial_init();


    pins_init();


    print("power up\n");
    digitalWrite(VCC_PIN, PinLevelHigh);
    while( digitalRead(DCD_PIN) != PinLevelHigh ) {;}
    print("dcd\n");

    rts_reset();

    if ( palm_handshake() ) {
        last_activity = timer_read();
    } else {
        print("failed handshake");
        _delay_ms(1000);

    }




    for (uint8_t i=0; i < MATRIX_ROWS; i++) matrix[i] = 0x00;

    matrix_init_quantum();
    return;


}
