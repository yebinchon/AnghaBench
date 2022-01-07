
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pend_disassoc; int pend_rejoin; int pend_rejoin_wpa; int ap_channel; scalar_t__ ap_key_len; scalar_t__ ap_ssid_len; scalar_t__ wifi_join_state; scalar_t__ wifi_scan_state; scalar_t__ itf_state; int cyw43_ll; } ;
typedef TYPE_1__ cyw43_t ;


 int MP_HAL_PIN_MODE_INPUT ;
 int MP_HAL_PIN_MODE_OUTPUT ;
 int MP_HAL_PIN_PULL_NONE ;
 int cyw43_ll_init (int *,TYPE_1__*) ;
 int * cyw43_poll ;
 int mp_hal_pin_config (int ,int ,int ,int ) ;
 int mp_hal_pin_low (int ) ;
 int pyb_pin_WL_HOST_WAKE ;
 int pyb_pin_WL_REG_ON ;
 int pyb_pin_WL_RFSW_VDD ;

void cyw43_init(cyw43_t *self) {



    mp_hal_pin_config(pyb_pin_WL_REG_ON, MP_HAL_PIN_MODE_OUTPUT, MP_HAL_PIN_PULL_NONE, 0);
    mp_hal_pin_low(pyb_pin_WL_REG_ON);





    cyw43_ll_init(&self->cyw43_ll, self);

    self->itf_state = 0;
    self->wifi_scan_state = 0;
    self->wifi_join_state = 0;
    self->pend_disassoc = 0;
    self->pend_rejoin= 0;
    self->pend_rejoin_wpa = 0;
    self->ap_channel = 3;
    self->ap_ssid_len = 0;
    self->ap_key_len = 0;

    cyw43_poll = ((void*)0);
}
