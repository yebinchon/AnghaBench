
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _i32 ;
typedef int SlFsFileInfo_t ;
typedef int DRESULT ;


 int ASSERT (int ) ;
 int FS_MODE_OPEN_CREATE (int ,int ) ;
 int FS_MODE_OPEN_WRITE ;
 int RES_ERROR ;
 int RES_OK ;
 int SFLASH_BLOCK_COUNT ;
 int SFLASH_BLOCK_SIZE ;
 int SL_OS_WAIT_FOREVER ;
 int UINT32_MAX ;
 int * mem_Malloc (int ) ;
 int memset (int *,int,int ) ;
 int print_block_name (int) ;
 int sflash_access (int ,int ) ;
 int * sflash_block_cache ;
 int sflash_block_name ;
 int sflash_cache_is_dirty ;
 int sflash_init_done ;
 int sflash_prblock ;
 int sl_FsClose (int ,int *,int *,int ) ;
 scalar_t__ sl_FsGetInfo (int ,int ,int *) ;
 int sl_FsOpen (int ,int ,int *,int *) ;
 int sl_FsWrite ;
 int sl_LockObjLock (int *,int ) ;
 int sl_LockObjUnlock (int *) ;
 int wlan_LockObj ;

DRESULT sflash_disk_init (void) {
    _i32 fileHandle;
    SlFsFileInfo_t FsFileInfo;

    if (!sflash_init_done) {

        ASSERT ((sflash_block_cache = mem_Malloc(SFLASH_BLOCK_SIZE)) != ((void*)0));
        sflash_init_done = 1;
        sflash_prblock = UINT32_MAX;
        sflash_cache_is_dirty = 0;



        print_block_name (SFLASH_BLOCK_COUNT - 1);
        sl_LockObjLock (&wlan_LockObj, SL_OS_WAIT_FOREVER);
        if (!sl_FsGetInfo(sflash_block_name, 0, &FsFileInfo)) {
            sl_LockObjUnlock (&wlan_LockObj);
            return RES_OK;
        }
        sl_LockObjUnlock (&wlan_LockObj);


        for (int i = 0; i < SFLASH_BLOCK_COUNT; i++) {
            print_block_name (i);
            sl_LockObjLock (&wlan_LockObj, SL_OS_WAIT_FOREVER);

            if (sl_FsGetInfo(sflash_block_name, 0, &FsFileInfo) != 0) {
                if (!sl_FsOpen(sflash_block_name, FS_MODE_OPEN_CREATE(SFLASH_BLOCK_SIZE, 0), ((void*)0), &fileHandle)) {
                    sl_FsClose(fileHandle, ((void*)0), ((void*)0), 0);
                    sl_LockObjUnlock (&wlan_LockObj);
                    memset(sflash_block_cache, 0xFF, SFLASH_BLOCK_SIZE);
                    if (!sflash_access(FS_MODE_OPEN_WRITE, sl_FsWrite)) {
                        return RES_ERROR;
                    }
                }
                else {

                    sl_LockObjUnlock (&wlan_LockObj);
                    return RES_ERROR;
                }
            }
            sl_LockObjUnlock (&wlan_LockObj);
        }
    }
    return RES_OK;
}
