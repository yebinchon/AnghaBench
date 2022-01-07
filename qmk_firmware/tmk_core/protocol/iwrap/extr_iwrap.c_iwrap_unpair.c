
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _delay_ms (int) ;
 int iwrap_mux_send (char*) ;
 int print_S (char*) ;
 char* rcv_buf ;
 int rcv_tail ;
 int strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;

void iwrap_unpair(void) {
    iwrap_mux_send("SET BT PAIR");
    _delay_ms(500);

    char *p = rcv_buf + rcv_tail;
    if (!strncmp(p, "SET BT PAIR", 11)) {
        strncpy(p + 29, "\n\0", 2);
        print_S(p);
        iwrap_mux_send(p);
    }
}
