
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ UINT ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ DRESULT ;
typedef int BYTE ;


 int FS_MODE_OPEN_READ ;
 scalar_t__ RES_ERROR ;
 scalar_t__ RES_OK ;
 scalar_t__ RES_PARERR ;
 scalar_t__ SFLASH_SECTORS_PER_BLOCK ;
 scalar_t__ SFLASH_SECTOR_COUNT ;
 size_t SFLASH_SECTOR_SIZE ;
 scalar_t__ STA_NOINIT ;
 int memcpy (int *,int const*,size_t) ;
 int print_block_name (scalar_t__) ;
 int sflash_access (int ,int ) ;
 int * sflash_block_cache ;
 int sflash_cache_is_dirty ;
 scalar_t__ sflash_disk_flush () ;
 int sflash_init_done ;
 scalar_t__ sflash_prblock ;
 scalar_t__ sflash_ublock ;
 int sl_FsRead ;

DRESULT sflash_disk_write(const BYTE *buff, DWORD sector, UINT count) {
    uint32_t secindex;
    int32_t index = 0;

    if (!sflash_init_done) {
        return STA_NOINIT;
    }

    if ((sector + count > SFLASH_SECTOR_COUNT) || (count == 0)) {
        sflash_disk_flush();
        return RES_PARERR;
    }

    do {
        secindex = (sector + index) % SFLASH_SECTORS_PER_BLOCK;
        sflash_ublock = (sector + index) / SFLASH_SECTORS_PER_BLOCK;

        if (sflash_prblock != sflash_ublock) {
            if (sflash_disk_flush() != RES_OK) {
                return RES_ERROR;
            }
            sflash_prblock = sflash_ublock;
            print_block_name (sflash_ublock);

            if (!sflash_access(FS_MODE_OPEN_READ, sl_FsRead)) {
                return RES_ERROR;
            }
        }

        memcpy (&sflash_block_cache[(secindex * SFLASH_SECTOR_SIZE)], buff, SFLASH_SECTOR_SIZE);
        buff += SFLASH_SECTOR_SIZE;
        sflash_cache_is_dirty = 1;
    } while (++index < count);

    return RES_OK;
}
