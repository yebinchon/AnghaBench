
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int _u8 ;
typedef scalar_t__ _u32 ;
typedef int _i32 ;
struct TYPE_3__ {int FileLen; } ;
typedef TYPE_1__ SlFsFileInfo_t ;


 scalar_t__ BOOTMGR_BUFF_SIZE ;
 int BOOTMGR_HASH_ALGO ;
 int BOOTMGR_HASH_SIZE ;
 int CRYPTOHASH_SHAMD5Read (int*) ;
 int CRYPTOHASH_SHAMD5Start (int ,int) ;
 int CRYPTOHASH_SHAMD5Update (int*,scalar_t__) ;
 int FS_MODE_OPEN_READ ;
 int* bootmgr_file_buf ;
 int * bootmgr_hash_buf ;
 int sl_FsClose (int ,int *,int *,int ) ;
 int sl_FsGetInfo (int *,int ,TYPE_1__*) ;
 scalar_t__ sl_FsOpen (int *,int ,int *,int *) ;
 scalar_t__ sl_FsRead (int ,scalar_t__,int*,int) ;
 int snprintf (char*,int,char*,int) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static bool bootmgr_verify (_u8 *image) {
    SlFsFileInfo_t FsFileInfo;
    _u32 reqlen, offset = 0;
    _i32 fHandle;


    if (0 == sl_FsOpen(image, FS_MODE_OPEN_READ, ((void*)0), &fHandle)) {

        sl_FsGetInfo(image, 0, &FsFileInfo);

        if (FsFileInfo.FileLen > BOOTMGR_HASH_SIZE) {
            FsFileInfo.FileLen -= BOOTMGR_HASH_SIZE;
            CRYPTOHASH_SHAMD5Start(BOOTMGR_HASH_ALGO, FsFileInfo.FileLen);
            do {
                if ((FsFileInfo.FileLen - offset) > BOOTMGR_BUFF_SIZE) {
                    reqlen = BOOTMGR_BUFF_SIZE;
                }
                else {
                    reqlen = FsFileInfo.FileLen - offset;
                }

                offset += sl_FsRead(fHandle, offset, bootmgr_file_buf, reqlen);
                CRYPTOHASH_SHAMD5Update(bootmgr_file_buf, reqlen);
            } while (offset < FsFileInfo.FileLen);

            CRYPTOHASH_SHAMD5Read (bootmgr_file_buf);


            for (_u32 i = 0; i < (BOOTMGR_HASH_SIZE / 2); i++) {
                snprintf ((char *)&bootmgr_hash_buf[(i * 2)], 3, "%02x", bootmgr_file_buf[i]);
            }


            sl_FsRead(fHandle, offset, bootmgr_file_buf, BOOTMGR_HASH_SIZE);
            sl_FsClose (fHandle, ((void*)0), ((void*)0), 0);
            bootmgr_file_buf[BOOTMGR_HASH_SIZE] = '\0';

            if (!strcmp((const char *)bootmgr_hash_buf, (const char *)bootmgr_file_buf)) {

                return 1;
            }
        }

        sl_FsClose(fHandle, ((void*)0), ((void*)0), 0);
    }
    return 0;
}
