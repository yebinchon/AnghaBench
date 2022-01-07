
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int TXC; int DRE; } ;
struct TYPE_9__ {TYPE_1__ bit; } ;
struct TYPE_10__ {int DATA; } ;
struct TYPE_11__ {TYPE_3__ bit; } ;
struct TYPE_12__ {TYPE_2__ INTFLAG; TYPE_4__ DATA; } ;
struct TYPE_14__ {TYPE_5__ SPI; } ;
struct TYPE_13__ {int reg; } ;


 int DBGC (int ) ;
 int DC_SPI_WRITE_DRE ;
 int DC_SPI_WRITE_TXC_1 ;
 int DC_SPI_WRITE_TXC_2 ;
 int SR_EXP_RCLK_HI ;
 int SR_EXP_RCLK_LO ;
 TYPE_7__* SR_EXP_SERCOM ;
 TYPE_6__ sr_exp_data ;

void SR_EXP_WriteData(void) {
    SR_EXP_RCLK_LO;

    while (!(SR_EXP_SERCOM->SPI.INTFLAG.bit.DRE)) {
        DBGC(DC_SPI_WRITE_DRE);
    }

    SR_EXP_SERCOM->SPI.DATA.bit.DATA = sr_exp_data.reg & 0xFF;
    while (!(SR_EXP_SERCOM->SPI.INTFLAG.bit.TXC)) {
        DBGC(DC_SPI_WRITE_TXC_1);
    }

    SR_EXP_SERCOM->SPI.DATA.bit.DATA = (sr_exp_data.reg >> 8) & 0xFF;
    while (!(SR_EXP_SERCOM->SPI.INTFLAG.bit.TXC)) {
        DBGC(DC_SPI_WRITE_TXC_2);
    }

    SR_EXP_RCLK_HI;
}
