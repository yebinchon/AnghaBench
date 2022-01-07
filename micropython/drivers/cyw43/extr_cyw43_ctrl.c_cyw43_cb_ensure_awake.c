
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CYW43_SLEEP_MAX ;
 int __HAL_RCC_SDMMC1_CLK_ENABLE () ;
 scalar_t__ __HAL_RCC_SDMMC1_IS_CLK_DISABLED () ;
 int cyw43_sleep ;
 int sdio_enable_high_speed_4bit () ;

void cyw43_cb_ensure_awake(void *cb_data) {
    cyw43_sleep = CYW43_SLEEP_MAX;

    if (__HAL_RCC_SDMMC1_IS_CLK_DISABLED()) {
        __HAL_RCC_SDMMC1_CLK_ENABLE();
        sdio_enable_high_speed_4bit();
    }

}
