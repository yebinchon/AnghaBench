
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_30__ {scalar_t__ ENABLE; } ;
struct TYPE_28__ {int DORD; int CPOL; int CPHA; int DIPO; int MODE; int ENABLE; scalar_t__ DOPO; } ;
struct TYPE_29__ {TYPE_7__ bit; } ;
struct TYPE_22__ {int reg; } ;
struct TYPE_27__ {TYPE_5__* PINCFG; TYPE_3__* PMUX; TYPE_1__ DIRSET; } ;
struct TYPE_25__ {int PMUXEN; } ;
struct TYPE_26__ {TYPE_4__ bit; } ;
struct TYPE_23__ {int SR_EXP_SCLK_MUX_SEL; int SR_EXP_DATAOUT_MUX_SEL; } ;
struct TYPE_24__ {TYPE_2__ bit; } ;
struct TYPE_21__ {TYPE_6__* Group; } ;
struct TYPE_16__ {TYPE_9__ bit; } ;
struct TYPE_17__ {TYPE_10__ SYNCBUSY; TYPE_8__ CTRLA; } ;
struct TYPE_20__ {TYPE_11__ SPI; } ;
struct TYPE_18__ {int E_UP_N; int S_DN1; int E_DN1_N; int SRC_1; int SRC_2; int IRST; scalar_t__ SDB_N; scalar_t__ E_VBUS_2; scalar_t__ E_VBUS_1; scalar_t__ S_UP; scalar_t__ HUB_RESET_N; scalar_t__ HUB_CONNECT; } ;
struct TYPE_19__ {TYPE_12__ bit; scalar_t__ reg; } ;


 int CHAN_SERCOM_SPI ;
 int CLK_set_spi_freq (int ,int ) ;
 int DBGC (int ) ;
 int DC_SPI_INIT_BEGIN ;
 int DC_SPI_INIT_COMPLETE ;
 int DC_SPI_SYNC_ENABLING ;
 int FREQ_SPI_DEFAULT ;
 TYPE_15__* PORT ;
 int SR_EXP_DATAOUT_MUX ;
 int SR_EXP_DATAOUT_PIN ;
 size_t SR_EXP_DATAOUT_PORT ;
 int SR_EXP_OE_N_DIS ;
 int SR_EXP_OE_N_ENA ;
 int SR_EXP_OE_N_PIN ;
 size_t SR_EXP_OE_N_PORT ;
 int SR_EXP_RCLK_HI ;
 int SR_EXP_RCLK_PIN ;
 size_t SR_EXP_RCLK_PORT ;
 int SR_EXP_SCLK_MUX ;
 int SR_EXP_SCLK_PIN ;
 size_t SR_EXP_SCLK_PORT ;
 TYPE_14__* SR_EXP_SERCOM ;
 int SR_EXP_WriteData () ;
 TYPE_13__ sr_exp_data ;

void SR_EXP_Init(void) {
    DBGC(DC_SPI_INIT_BEGIN);

    CLK_set_spi_freq(CHAN_SERCOM_SPI, FREQ_SPI_DEFAULT);


    PORT->Group[SR_EXP_RCLK_PORT].DIRSET.reg = (1 << SR_EXP_RCLK_PIN);
    PORT->Group[SR_EXP_OE_N_PORT].DIRSET.reg = (1 << SR_EXP_OE_N_PIN);


    PORT->Group[SR_EXP_DATAOUT_PORT].PMUX[SR_EXP_DATAOUT_PIN / 2].bit.SR_EXP_DATAOUT_MUX_SEL = SR_EXP_DATAOUT_MUX;
    PORT->Group[SR_EXP_SCLK_PORT].PMUX[SR_EXP_SCLK_PIN / 2].bit.SR_EXP_SCLK_MUX_SEL = SR_EXP_SCLK_MUX;
    PORT->Group[SR_EXP_DATAOUT_PORT].PINCFG[SR_EXP_DATAOUT_PIN].bit.PMUXEN = 1;
    PORT->Group[SR_EXP_SCLK_PORT].PINCFG[SR_EXP_SCLK_PIN].bit.PMUXEN = 1;


    SR_EXP_OE_N_DIS;
    SR_EXP_RCLK_HI;

    SR_EXP_SERCOM->SPI.CTRLA.bit.DORD = 1;
    SR_EXP_SERCOM->SPI.CTRLA.bit.CPOL = 1;
    SR_EXP_SERCOM->SPI.CTRLA.bit.CPHA = 1;
    SR_EXP_SERCOM->SPI.CTRLA.bit.DIPO = 3;
    SR_EXP_SERCOM->SPI.CTRLA.bit.DOPO = 0;
    SR_EXP_SERCOM->SPI.CTRLA.bit.MODE = 3;

    SR_EXP_SERCOM->SPI.CTRLA.bit.ENABLE = 1;
    while (SR_EXP_SERCOM->SPI.SYNCBUSY.bit.ENABLE) {
        DBGC(DC_SPI_SYNC_ENABLING);
    }

    sr_exp_data.reg = 0;
    sr_exp_data.bit.HUB_CONNECT = 0;
    sr_exp_data.bit.HUB_RESET_N = 0;
    sr_exp_data.bit.S_UP = 0;
    sr_exp_data.bit.E_UP_N = 1;
    sr_exp_data.bit.S_DN1 = 1;
    sr_exp_data.bit.E_DN1_N = 1;
    sr_exp_data.bit.E_VBUS_1 = 0;
    sr_exp_data.bit.E_VBUS_2 = 0;
    sr_exp_data.bit.SRC_1 = 1;
    sr_exp_data.bit.SRC_2 = 1;
    sr_exp_data.bit.IRST = 1;
    sr_exp_data.bit.SDB_N = 0;
    SR_EXP_WriteData();


    SR_EXP_OE_N_ENA;

    DBGC(DC_SPI_INIT_COMPLETE);
}
