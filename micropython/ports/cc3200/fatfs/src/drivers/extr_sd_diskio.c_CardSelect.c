
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long usRCA; } ;
typedef TYPE_1__ DiskInfo_t ;


 int CMD_SELECT_CARD ;
 unsigned long CardSendCmd (int ,unsigned long) ;
 int MAP_SDHostIntStatus (int ) ;
 int SDHOST_BASE ;
 int SDHOST_INT_TC ;
 int mp_hal_delay_ms (int) ;

__attribute__((used)) static unsigned int CardSelect (DiskInfo_t *sDiskInfo) {
    unsigned long ulRCA;
    unsigned long ulRet;

    ulRCA = sDiskInfo->usRCA;


    ulRet = CardSendCmd(CMD_SELECT_CARD, (ulRCA << 16));

    if (ulRet == 0) {
        while (!(MAP_SDHostIntStatus(SDHOST_BASE) & SDHOST_INT_TC));
    }


    mp_hal_delay_ms(250);

    return ulRet;
}
