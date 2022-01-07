
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int bStatus; scalar_t__ ulCapClass; } ;
typedef int DWORD ;
typedef int DRESULT ;
typedef int BYTE ;


 scalar_t__ CARD_CAP_CLASS_SDSC ;
 int CMD_READ_MULTI_BLK ;
 int CMD_READ_SINGLE_BLK ;
 int CMD_STOP_TRANS ;
 scalar_t__ CardSendCmd (int ,int) ;
 int MAP_SDHostBlockCountSet (int ,int) ;
 int MAP_SDHostDataRead (int ,unsigned long*) ;
 int MAP_SDHostIntStatus (int ) ;
 int RES_ERROR ;
 int RES_NOTRDY ;
 int RES_OK ;
 int SDHOST_BASE ;
 int SDHOST_INT_TC ;
 int SD_SECTOR_SIZE ;
 int STA_NOINIT ;
 TYPE_1__ sd_disk_info ;

DRESULT sd_disk_read (BYTE* pBuffer, DWORD ulSectorNumber, UINT SectorCount) {
    DRESULT Res = RES_ERROR;
    unsigned long ulSize;

    if (SectorCount > 0) {

        if (sd_disk_info.bStatus & STA_NOINIT) {
            return RES_NOTRDY;
        }


        if (sd_disk_info.ulCapClass == CARD_CAP_CLASS_SDSC) {
            ulSectorNumber = ulSectorNumber * SD_SECTOR_SIZE;
        }


        MAP_SDHostBlockCountSet(SDHOST_BASE, SectorCount);


        ulSize = (SD_SECTOR_SIZE * SectorCount) / 4;


        if (SectorCount == 1) {

            if (CardSendCmd(CMD_READ_SINGLE_BLK, ulSectorNumber) == 0) {

                while (ulSize--) {
                    MAP_SDHostDataRead(SDHOST_BASE, (unsigned long *)pBuffer);
                    pBuffer += 4;
                }
                Res = RES_OK;
            }
        }
        else {

            if (CardSendCmd(CMD_READ_MULTI_BLK, ulSectorNumber) == 0) {

                while (ulSize--) {
                    MAP_SDHostDataRead(SDHOST_BASE, (unsigned long *)pBuffer);
                    pBuffer += 4;
                }
                CardSendCmd(CMD_STOP_TRANS, 0);
                while (!(MAP_SDHostIntStatus(SDHOST_BASE) & SDHOST_INT_TC));
                Res = RES_OK;
            }
        }
    }

    return Res;
}
