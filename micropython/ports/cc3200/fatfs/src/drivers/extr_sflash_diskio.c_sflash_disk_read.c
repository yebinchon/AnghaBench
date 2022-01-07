
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef scalar_t__ UINT ;
typedef int DWORD ;
typedef scalar_t__ DRESULT ;
typedef int BYTE ;


 int FS_MODE_OPEN_READ ;
 scalar_t__ RES_ERROR ;
 scalar_t__ RES_OK ;
 scalar_t__ RES_PARERR ;
 int SFLASH_SECTORS_PER_BLOCK ;
 scalar_t__ SFLASH_SECTOR_COUNT ;
 size_t SFLASH_SECTOR_SIZE ;
 scalar_t__ STA_NOINIT ;
 int memcpy (int *,int *,size_t) ;
 int print_block_name (int) ;
 int sflash_access (int ,int ) ;
 int * sflash_block_cache ;
 scalar_t__ sflash_disk_flush () ;
 int sflash_init_done ;
 int sflash_prblock ;
 int sflash_ublock ;
 int sl_FsRead ;

DRESULT sflash_disk_read(BYTE *buff, DWORD sector, UINT count) {
    uint32_t secindex;

    if (!sflash_init_done) {
        return STA_NOINIT;
    }

    if ((sector + count > SFLASH_SECTOR_COUNT) || (count == 0)) {
        return RES_PARERR;
    }

    for (int i = 0; i < count; i++) {
        secindex = (sector + i) % SFLASH_SECTORS_PER_BLOCK;
        sflash_ublock = (sector + i) / SFLASH_SECTORS_PER_BLOCK;

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

        memcpy (buff, &sflash_block_cache[(secindex * SFLASH_SECTOR_SIZE)], SFLASH_SECTOR_SIZE);
        buff += SFLASH_SECTOR_SIZE;
    }
    return RES_OK;
}
