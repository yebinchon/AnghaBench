
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_LED_CONFIG ;
 int DEBUG_LED_OFF ;
 int DEBUG_LED_ON ;
 int _delay_ms (int) ;
 int iwrap_check_connection () ;
 int iwrap_mux_send (char*) ;
 int print_S (char*) ;
 char* rcv_buf ;
 int rcv_tail ;
 int strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;

void iwrap_call(void) {
    char *p;

    iwrap_mux_send("SET BT PAIR");
    _delay_ms(500);

    p = rcv_buf + rcv_tail;
    while (!strncmp(p, "SET BT PAIR", 11)) {
        p += 7;
        strncpy(p, "CALL", 4);
        strncpy(p + 22, " 11 HID\n\0", 9);
        print_S(p);
        iwrap_mux_send(p);

        p += 57;

        DEBUG_LED_CONFIG;
        DEBUG_LED_ON;
        _delay_ms(500);
        DEBUG_LED_OFF;
        _delay_ms(500);
        DEBUG_LED_ON;
        _delay_ms(500);
        DEBUG_LED_OFF;
        _delay_ms(500);
        DEBUG_LED_ON;
        _delay_ms(500);
        DEBUG_LED_OFF;
        _delay_ms(500);
        DEBUG_LED_ON;
        _delay_ms(500);
        DEBUG_LED_OFF;
        _delay_ms(500);
        DEBUG_LED_ON;
        _delay_ms(500);
        DEBUG_LED_OFF;
        _delay_ms(500);
    }
    iwrap_check_connection();
}
