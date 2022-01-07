
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ connect_state; } ;
typedef TYPE_1__ usbd_cdc_itf_t ;


 scalar_t__ USBD_CDC_CONNECT_STATE_CONNECTED ;

__attribute__((used)) static inline int usbd_cdc_is_connected(usbd_cdc_itf_t *cdc) {
    return cdc->connect_state == USBD_CDC_CONNECT_STATE_CONNECTED;
}
