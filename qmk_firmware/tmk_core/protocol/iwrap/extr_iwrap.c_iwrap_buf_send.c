
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* buf ;
 int iwrap_mux_send (char*) ;
 size_t snd_pos ;

void iwrap_buf_send(void) {
    buf[snd_pos] = '\0';
    snd_pos = 0;
    iwrap_mux_send(buf);
}
