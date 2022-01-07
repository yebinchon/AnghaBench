
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MUX_FOOTER (int) ;
 int MUX_HEADER (int,int ) ;
 int iwrap_send (char const*) ;
 int rcv_clear () ;
 int strlen (char*) ;

void iwrap_mux_send(const char *s) {
    rcv_clear();
    MUX_HEADER(0xff, strlen((char *)s));
    iwrap_send(s);
    MUX_FOOTER(0xff);
}
