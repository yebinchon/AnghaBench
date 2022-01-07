
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cyw43_t ;


 int MP_HAL_MAC_WLAN0 ;
 int mp_hal_get_mac (int ,int *) ;

int cyw43_wifi_get_mac(cyw43_t *self, int itf, uint8_t mac[6]) {
    mp_hal_get_mac(MP_HAL_MAC_WLAN0, &mac[0]);
    return 0;
}
