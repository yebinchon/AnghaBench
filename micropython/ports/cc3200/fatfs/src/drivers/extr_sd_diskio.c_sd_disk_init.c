
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bStatus; unsigned long usRCA; void* ucCardType; int ulCapClass; int ulVersion; } ;
typedef scalar_t__ DSTATUS ;


 int CARD_CAP_CLASS_SDHC ;
 void* CARD_TYPE_MMC ;
 void* CARD_TYPE_SDCARD ;
 int CARD_VERSION_2 ;
 int CMD_ALL_SEND_CID ;
 int CMD_APP_CMD ;
 int CMD_GO_IDLE_STATE ;
 int CMD_SD_SEND_OP_COND ;
 int CMD_SEND_IF_COND ;
 int CMD_SEND_OP_COND ;
 int CMD_SEND_REL_ADDR ;
 int CardCapacityGet (TYPE_1__*) ;
 unsigned long CardSelect (TYPE_1__*) ;
 unsigned long CardSendCmd (int ,int) ;
 int MAP_SDHostRespGet (int ,unsigned long*) ;
 int SDHOST_BASE ;
 scalar_t__ STA_NODISK ;
 TYPE_1__ sd_disk_info ;

DSTATUS sd_disk_init (void) {
    unsigned long ulRet;
    unsigned long ulResp[4];

    if (sd_disk_info.bStatus != 0) {
        sd_disk_info.bStatus = STA_NODISK;

        if (CardSendCmd(CMD_GO_IDLE_STATE, 0) == 0) {

            ulRet = CardSendCmd(CMD_SEND_IF_COND,0x000001A5);
            MAP_SDHostRespGet(SDHOST_BASE,ulResp);


            if (ulRet == 0 && ((ulResp[0] & 0xFF) == 0xA5)) {

                sd_disk_info.ulVersion = CARD_VERSION_2;
                sd_disk_info.ucCardType = CARD_TYPE_SDCARD;


                do {

                    CardSendCmd(CMD_APP_CMD, 0);
                    ulRet = CardSendCmd(CMD_SD_SEND_OP_COND, 0x40E00000);


                    MAP_SDHostRespGet(SDHOST_BASE, ulResp);

                } while (((ulResp[0] >> 31) == 0));

                if (ulResp[0] & (1UL<<30)) {
                    sd_disk_info.ulCapClass = CARD_CAP_CLASS_SDHC;
                }
                sd_disk_info.bStatus = 0;
            }

            else {

                do {
                    CardSendCmd(CMD_APP_CMD, 0);
                    ulRet = CardSendCmd(CMD_SD_SEND_OP_COND,0x00E00000);
                    if (ulRet == 0) {

                        MAP_SDHostRespGet(SDHOST_BASE, ulResp);
                    }
                } while (((ulRet == 0) && (ulResp[0] >> 31) == 0));

                if (ulRet == 0) {
                    sd_disk_info.ucCardType = CARD_TYPE_SDCARD;
                    sd_disk_info.bStatus = 0;
                }
                else {
                    if (CardSendCmd(CMD_SEND_OP_COND, 0) == 0) {

                        sd_disk_info.ucCardType = CARD_TYPE_MMC;
                    }
                }
            }
        }


        if (sd_disk_info.bStatus == 0) {
            ulRet = CardSendCmd(CMD_ALL_SEND_CID, 0);
            if (ulRet == 0) {
                CardSendCmd(CMD_SEND_REL_ADDR,0);
                MAP_SDHostRespGet(SDHOST_BASE, ulResp);


                sd_disk_info.usRCA = (ulResp[0] >> 16);


                CardCapacityGet(&sd_disk_info);
            }


            ulRet = CardSelect(&sd_disk_info);
            if (ulRet == 0) {
                sd_disk_info.bStatus = 0;
            }
        }
    }

    return sd_disk_info.bStatus;
}
