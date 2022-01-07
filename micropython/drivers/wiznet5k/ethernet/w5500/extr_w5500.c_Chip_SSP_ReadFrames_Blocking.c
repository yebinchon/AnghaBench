
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int (* _read_bytes ) (int *,int ) ;} ;
struct TYPE_5__ {TYPE_1__ SPI; } ;
struct TYPE_6__ {TYPE_2__ IF; } ;


 TYPE_3__ WIZCHIP ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void Chip_SSP_ReadFrames_Blocking(int dummy, uint8_t *buf, uint32_t len) {
    WIZCHIP.IF.SPI._read_bytes(buf, len);
}
