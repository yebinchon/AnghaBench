
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ usRCA; int bStatus; scalar_t__ ulBlockSize; scalar_t__ ulNofBlock; int ulCapClass; int ulVersion; int ucCardType; } ;


 int CARD_CAP_CLASS_SDSC ;
 int CARD_TYPE_UNKNOWN ;
 int CARD_VERSION_1 ;
 int STA_NOINIT ;
 TYPE_1__ sd_disk_info ;

void sd_disk_deinit (void) {
    sd_disk_info.ucCardType = CARD_TYPE_UNKNOWN;
    sd_disk_info.ulVersion = CARD_VERSION_1;
    sd_disk_info.ulCapClass = CARD_CAP_CLASS_SDSC;
    sd_disk_info.ulNofBlock = 0;
    sd_disk_info.ulBlockSize = 0;
    sd_disk_info.bStatus = STA_NOINIT;
    sd_disk_info.usRCA = 0;
}
