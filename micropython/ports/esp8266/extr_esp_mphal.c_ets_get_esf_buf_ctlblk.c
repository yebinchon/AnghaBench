
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *ets_get_esf_buf_ctlblk(void) {

    extern void *esf_rx_buf_alloc();
    return ((void**)esf_rx_buf_alloc)[-1];
}
