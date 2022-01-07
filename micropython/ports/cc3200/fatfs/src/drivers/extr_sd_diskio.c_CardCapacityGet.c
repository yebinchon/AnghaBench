
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int usRCA; unsigned long ulBlockSize; unsigned long ulNofBlock; } ;
typedef TYPE_1__ DiskInfo_t ;


 int CMD_SEND_CSD ;
 unsigned long CardSendCmd (int ,int) ;
 int MAP_SDHostRespGet (int ,unsigned long*) ;
 int SDHOST_BASE ;
 int SD_SECTOR_SIZE ;

__attribute__((used)) static unsigned int CardCapacityGet(DiskInfo_t *psDiskInfo) {
    unsigned long ulRet;
    unsigned long ulResp[4];
    unsigned long ulBlockSize;
    unsigned long ulBlockCount;
    unsigned long ulCSizeMult;
    unsigned long ulCSize;


    ulRet = CardSendCmd(CMD_SEND_CSD, (psDiskInfo->usRCA << 16));

    if(ulRet == 0) {

        MAP_SDHostRespGet(SDHOST_BASE,ulResp);






        if(ulResp[3] >> 30) {
            ulBlockSize = SD_SECTOR_SIZE * 1024;
            ulBlockCount = (ulResp[1] >> 16 | ((ulResp[2] & 0x3F) << 16)) + 1;
        }
        else {
            ulBlockSize = 1 << ((ulResp[2] >> 16) & 0xF);
            ulCSizeMult = ((ulResp[1] >> 15) & 0x7);
            ulCSize = ((ulResp[1] >> 30) | (ulResp[2] & 0x3FF) << 2);
            ulBlockCount = (ulCSize + 1) * (1 << (ulCSizeMult + 2));
        }


        psDiskInfo->ulBlockSize = ulBlockSize;
        psDiskInfo->ulNofBlock = ulBlockCount;
    }

    return ulRet;
}
