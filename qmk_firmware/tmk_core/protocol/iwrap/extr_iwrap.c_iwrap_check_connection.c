
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int _delay_ms (int) ;
 int connected ;
 int iwrap_mux_send (char*) ;
 int rcv_buf ;
 scalar_t__ strncmp (int ,char*,int) ;

uint8_t iwrap_check_connection(void) {
    iwrap_mux_send("LIST");
    _delay_ms(100);

    if (strncmp(rcv_buf, "LIST ", 5) || !strncmp(rcv_buf, "LIST 0", 6))
        connected = 0;
    else
        connected = 1;
    return connected;
}
