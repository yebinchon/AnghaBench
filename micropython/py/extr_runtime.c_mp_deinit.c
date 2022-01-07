
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MICROPY_PORT_DEINIT_FUNC ;
 int MP_THREAD_GIL_EXIT () ;

void mp_deinit(void) {
    MP_THREAD_GIL_EXIT();
}
