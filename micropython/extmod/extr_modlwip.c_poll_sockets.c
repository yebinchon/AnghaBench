
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MICROPY_EVENT_POLL_HOOK ;
 int mp_hal_delay_ms (int) ;

__attribute__((used)) static inline void poll_sockets(void) {



    mp_hal_delay_ms(1);

}
