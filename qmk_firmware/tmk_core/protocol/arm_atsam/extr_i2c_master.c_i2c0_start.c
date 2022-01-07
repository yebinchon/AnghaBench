
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_18__ {scalar_t__ RXNACK; } ;
struct TYPE_19__ {TYPE_7__ bit; } ;
struct TYPE_16__ {scalar_t__ MB; } ;
struct TYPE_17__ {TYPE_5__ bit; } ;
struct TYPE_14__ {scalar_t__ SYSOP; } ;
struct TYPE_15__ {TYPE_3__ bit; } ;
struct TYPE_12__ {int ADDR; } ;
struct TYPE_13__ {TYPE_1__ bit; } ;
struct TYPE_20__ {TYPE_8__ STATUS; TYPE_6__ INTFLAG; TYPE_4__ SYNCBUSY; TYPE_2__ ADDR; } ;
struct TYPE_11__ {TYPE_9__ I2CM; } ;


 TYPE_10__* SERCOM0 ;

uint8_t i2c0_start(uint8_t address) {
    SERCOM0->I2CM.ADDR.bit.ADDR = address;
    while (SERCOM0->I2CM.SYNCBUSY.bit.SYSOP) {
    }
    while (SERCOM0->I2CM.INTFLAG.bit.MB == 0) {
    }
    while (SERCOM0->I2CM.STATUS.bit.RXNACK) {
    }

    return 1;
}
