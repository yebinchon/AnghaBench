
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PrevImg; int Status; int ActiveImg; } ;
typedef TYPE_1__ sBootInfo_t ;
typedef int _u32 ;
typedef int _i32 ;


 int FS_MODE_OPEN_CREATE (int,int) ;
 int FS_MODE_OPEN_READ ;
 int IMG_ACT_FACTORY ;
 scalar_t__ IMG_BOOT_INFO ;
 int IMG_STATUS_READY ;
 int MAP_GPIOPinWrite (int ,int ,int ) ;
 int MICROPY_SYS_LED_PORT ;
 int MICROPY_SYS_LED_PORT_PIN ;
 int PRCMSetSpecialBit (int ) ;
 int PRCM_FIRST_BOOT_BIT ;
 int SL_STOP_TIMEOUT ;
 int _FS_FILE_OPEN_FLAG_COMMIT ;
 int _FS_FILE_PUBLIC_READ ;
 int _FS_FILE_PUBLIC_WRITE ;
 int bootmgr_board_init () ;
 int bootmgr_image_loader (TYPE_1__*) ;
 int sl_FsClose (int ,int ,int ,int ) ;
 int sl_FsOpen (unsigned char*,int ,int *,int *) ;
 int sl_FsRead (int ,int ,unsigned char*,int) ;
 int sl_FsWrite (int ,int ,unsigned char*,int) ;
 int sl_Start (int ,int ,int ) ;
 int sl_Stop (int ) ;

int main (void) {
    sBootInfo_t sBootInfo = { .ActiveImg = IMG_ACT_FACTORY, .Status = IMG_STATUS_READY, .PrevImg = IMG_ACT_FACTORY };
    bool bootapp = 0;
    _i32 fhandle;


    bootmgr_board_init();


    sl_Start(0, 0, 0);


    if (!sl_FsOpen((unsigned char *)IMG_BOOT_INFO, FS_MODE_OPEN_READ, ((void*)0), &fhandle)) {
        if (sizeof(sBootInfo_t) == sl_FsRead(fhandle, 0, (unsigned char *)&sBootInfo, sizeof(sBootInfo_t))) {
            bootapp = 1;
        }
        sl_FsClose(fhandle, 0, 0, 0);
    }

    if (!bootapp) {

        _u32 BootInfoCreateFlag = _FS_FILE_OPEN_FLAG_COMMIT | _FS_FILE_PUBLIC_WRITE | _FS_FILE_PUBLIC_READ;
        if (!sl_FsOpen ((unsigned char *)IMG_BOOT_INFO, FS_MODE_OPEN_CREATE((2 * sizeof(sBootInfo_t)),
                        BootInfoCreateFlag), ((void*)0), &fhandle)) {

            if (sizeof(sBootInfo_t) == sl_FsWrite(fhandle, 0, (unsigned char *)&sBootInfo, sizeof(sBootInfo_t))) {
                bootapp = 1;
            }
            sl_FsClose(fhandle, 0, 0, 0);
        }

        PRCMSetSpecialBit(PRCM_FIRST_BOOT_BIT);
    }

    if (bootapp) {

        bootmgr_image_loader(&sBootInfo);
    }


    sl_Stop(SL_STOP_TIMEOUT);



    while (1) {

        MAP_GPIOPinWrite(MICROPY_SYS_LED_PORT, MICROPY_SYS_LED_PORT_PIN, MICROPY_SYS_LED_PORT_PIN);
        __asm volatile(" dsb \n"
                       " isb \n"
                       " wfi \n");
    }
}
