
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int _u8 ;
typedef int _i32 ;
struct TYPE_3__ {scalar_t__ FileLen; } ;
typedef TYPE_1__ SlFsFileInfo_t ;


 scalar_t__ APP_IMG_SRAM_OFFSET ;
 int FS_MODE_OPEN_READ ;
 int SL_STOP_TIMEOUT ;
 int bootmgr_run_app (scalar_t__) ;
 int sl_FsClose (int ,int ,int ,int ) ;
 int sl_FsGetInfo (int *,int ,TYPE_1__*) ;
 int sl_FsOpen (int *,int ,int *,int *) ;
 scalar_t__ sl_FsRead (int ,int ,unsigned char*,scalar_t__) ;
 int sl_Stop (int ) ;

__attribute__((used)) static void bootmgr_load_and_execute (_u8 *image) {
    SlFsFileInfo_t pFsFileInfo;
    _i32 fhandle;

    if (!sl_FsOpen(image, FS_MODE_OPEN_READ, ((void*)0), &fhandle)) {

        if (!sl_FsGetInfo(image, 0, &pFsFileInfo)) {

            if (pFsFileInfo.FileLen == sl_FsRead(fhandle, 0, (unsigned char *)APP_IMG_SRAM_OFFSET, pFsFileInfo.FileLen)) {

                sl_FsClose(fhandle, 0, 0, 0);

                sl_Stop(SL_STOP_TIMEOUT);

                bootmgr_run_app(APP_IMG_SRAM_OFFSET);
            }
        }
    }
}
