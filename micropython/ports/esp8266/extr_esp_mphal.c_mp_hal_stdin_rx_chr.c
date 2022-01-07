
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ets_loop_iter () ;
 int mp_hal_delay_us (int) ;
 int ringbuf_get (int *) ;
 int stdin_ringbuf ;

int mp_hal_stdin_rx_chr(void) {
    for (;;) {
        int c = ringbuf_get(&stdin_ringbuf);
        if (c != -1) {
            return c;
        }






        mp_hal_delay_us(1);

    }
}
