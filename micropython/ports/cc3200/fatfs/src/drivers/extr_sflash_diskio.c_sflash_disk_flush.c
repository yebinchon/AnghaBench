
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRESULT ;


 int FS_MODE_OPEN_WRITE ;
 int RES_ERROR ;
 int RES_OK ;
 int sflash_access (int ,int ) ;
 int sflash_cache_is_dirty ;
 int sl_FsWrite ;

DRESULT sflash_disk_flush (void) {

    if (sflash_cache_is_dirty) {
        if (!sflash_access(FS_MODE_OPEN_WRITE, sl_FsWrite)) {
            return RES_ERROR;
        }
        sflash_cache_is_dirty = 0;
    }
    return RES_OK;
}
