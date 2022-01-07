
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int _delay_ms (int) ;
 int iwrap_check_connection () ;
 int iwrap_mux_send (char*) ;
 int print (char*) ;
 int print_S (char*) ;
 char* rcv_buf ;
 char rcv_deq () ;
 int rcv_tail ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;

void iwrap_kill(void) {
    char c;
    iwrap_mux_send("LIST");
    _delay_ms(500);

    while ((c = rcv_deq()) && c != '\n')
        ;
    if (strncmp(rcv_buf + rcv_tail, "LIST ", 5)) {
        print("no connection to kill.\n");
        return;
    }

    for (uint8_t i = 10; i; i--)
        while ((c = rcv_deq()) && c != ' ')
            ;

    char *p = rcv_buf + rcv_tail - 5;
    strncpy(p, "KILL ", 5);
    strncpy(p + 22, "\n\0", 2);
    print_S(p);
    iwrap_mux_send(p);
    _delay_ms(500);

    iwrap_check_connection();
}
