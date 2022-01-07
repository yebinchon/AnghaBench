
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BDEV_IOCTL_INIT ;
 int MP_HAL_PIN_MODE_OUTPUT ;
 int MP_HAL_PIN_PULL_NONE ;
 int mp_hal_pin_config (int ,int ,int ,int ) ;
 int pyb_pin_EN_3V3 ;
 int spi_bdev2 ;
 int spi_bdev_ioctl (int *,int ,int ) ;
 int spiflash2_config ;

void board_early_init(void) {

    mp_hal_pin_config(pyb_pin_EN_3V3, MP_HAL_PIN_MODE_OUTPUT, MP_HAL_PIN_PULL_NONE, 0);


    spi_bdev_ioctl(&spi_bdev2, BDEV_IOCTL_INIT, (uint32_t)&spiflash2_config);
}
