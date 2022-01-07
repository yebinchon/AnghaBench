
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ActiveImg; scalar_t__ Status; int PrevImg; } ;
typedef TYPE_1__ sBootInfo_t ;
typedef unsigned char _u8 ;
typedef int _i32 ;


 int FS_MODE_OPEN_WRITE ;
 int IMG_ACT_FACTORY ;


 scalar_t__ IMG_BOOT_INFO ;
 scalar_t__ IMG_FACTORY ;
 scalar_t__ IMG_STATUS_CHECK ;
 scalar_t__ IMG_STATUS_READY ;
 scalar_t__ IMG_UPDATE1 ;
 scalar_t__ IMG_UPDATE2 ;
 int bootmgr_load_and_execute (unsigned char*) ;
 int bootmgr_verify (unsigned char*) ;
 int sl_FsClose (int ,int ,int ,int ) ;
 int sl_FsDel (unsigned char*,int ) ;
 int sl_FsOpen (unsigned char*,int ,int *,int *) ;
 int sl_FsWrite (int ,int ,unsigned char*,int) ;
 int wait_for_safe_boot (TYPE_1__*) ;

__attribute__((used)) static void bootmgr_image_loader(sBootInfo_t *psBootInfo) {
    _i32 fhandle;
    _u8 *image;


    switch (psBootInfo->ActiveImg) {
    case 129:
        image = (unsigned char *)IMG_UPDATE1;
        break;
    case 128:
        image = (unsigned char *)IMG_UPDATE2;
        break;
    default:
        image = (unsigned char *)IMG_FACTORY;
        break;
    }


    if ((psBootInfo->ActiveImg != IMG_ACT_FACTORY) && (psBootInfo->Status == IMG_STATUS_CHECK)) {
        if (!bootmgr_verify(image)) {

            sl_FsDel(image, 0);

            psBootInfo->ActiveImg = psBootInfo->PrevImg;
            psBootInfo->PrevImg = IMG_ACT_FACTORY;
        }

        psBootInfo->Status = IMG_STATUS_READY;

        if (!sl_FsOpen((unsigned char *)IMG_BOOT_INFO, FS_MODE_OPEN_WRITE, ((void*)0), &fhandle)) {
            sl_FsWrite(fhandle, 0, (unsigned char *)psBootInfo, sizeof(sBootInfo_t));

            sl_FsClose(fhandle, 0, 0, 0);
        }
    }



    wait_for_safe_boot(psBootInfo);


    switch (psBootInfo->ActiveImg) {
    case 129:
        image = (unsigned char *)IMG_UPDATE1;
        break;
    case 128:
        image = (unsigned char *)IMG_UPDATE2;
        break;
    default:
        image = (unsigned char *)IMG_FACTORY;
        break;
    }
    bootmgr_load_and_execute(image);
}
