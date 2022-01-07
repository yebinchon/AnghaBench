
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int last_activity ;
 scalar_t__ palm_handshake () ;
 int print (char*) ;
 int rts_reset () ;
 int timer_read () ;

uint8_t palm_reset(void) {
    print("@");
    rts_reset();

    if ( palm_handshake() ) {
        last_activity = timer_read();
        return 1;
    } else {
        print("failed reset");
        return 0;
    }

}
