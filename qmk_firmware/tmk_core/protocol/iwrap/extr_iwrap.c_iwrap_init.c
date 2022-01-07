
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _delay_ms (int) ;
 int iwrap_check_connection () ;
 int iwrap_mux_send (char*) ;
 int iwrap_send (char*) ;

void iwrap_init(void) {

    iwrap_send("RESET");
    iwrap_mux_send("RESET");
    _delay_ms(3000);
    iwrap_send("\r\nSET CONTROL MUX 1\r\n");
    _delay_ms(500);
    iwrap_check_connection();
}
