
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MP_OBJ_NULL ;
 scalar_t__ MP_STATE_VM (int ) ;
 int call_dupterm_read (int ) ;
 int * dupterm_objs ;
 int read (int ,unsigned char*,int) ;

int mp_hal_stdin_rx_chr(void) {
    unsigned char c;
        int ret = read(0, &c, 1);
        if (ret == 0) {
            c = 4;
        } else if (c == '\n') {
            c = '\r';
        }
        return c;



}
