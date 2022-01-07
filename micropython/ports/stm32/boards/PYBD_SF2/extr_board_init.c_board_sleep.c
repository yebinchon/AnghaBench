
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int spiflash; } ;
struct TYPE_3__ {int spiflash; } ;


 int mp_spiflash_deepsleep (int *,int) ;
 TYPE_2__ spi_bdev ;
 TYPE_1__ spi_bdev2 ;

void board_sleep(int value) {
    mp_spiflash_deepsleep(&spi_bdev.spiflash, value);
    mp_spiflash_deepsleep(&spi_bdev2.spiflash, value);
}
