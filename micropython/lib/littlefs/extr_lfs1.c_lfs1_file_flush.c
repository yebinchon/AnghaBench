
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int uint8_t ;
struct TYPE_16__ {int block; } ;
struct TYPE_17__ {TYPE_12__ rcache; } ;
typedef TYPE_1__ lfs1_t ;
typedef scalar_t__ lfs1_ssize_t ;
typedef int lfs1_off_t ;
struct TYPE_18__ {int flags; int pos; int size; int block; int head; TYPE_12__ cache; } ;
typedef TYPE_2__ lfs1_file_t ;


 int LFS1_ERR_CORRUPT ;
 int LFS1_F_DIRTY ;
 int LFS1_F_READING ;
 int LFS1_F_WRITING ;
 int LFS1_O_RDONLY ;
 int lfs1_cache_drop (TYPE_1__*,TYPE_12__*) ;
 int lfs1_cache_flush (TYPE_1__*,TYPE_12__*,TYPE_12__*) ;
 scalar_t__ lfs1_file_read (TYPE_1__*,TYPE_2__*,int *,int) ;
 int lfs1_file_relocate (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ lfs1_file_write (TYPE_1__*,TYPE_2__*,int *,int) ;

__attribute__((used)) static int lfs1_file_flush(lfs1_t *lfs1, lfs1_file_t *file) {
    if (file->flags & LFS1_F_READING) {

        lfs1_cache_drop(lfs1, &file->cache);
        file->flags &= ~LFS1_F_READING;
    }

    if (file->flags & LFS1_F_WRITING) {
        lfs1_off_t pos = file->pos;


        lfs1_file_t orig = {
            .head = file->head,
            .size = file->size,
            .flags = LFS1_O_RDONLY,
            .pos = file->pos,
            .cache = lfs1->rcache,
        };
        lfs1_cache_drop(lfs1, &lfs1->rcache);

        while (file->pos < file->size) {


            uint8_t data;
            lfs1_ssize_t res = lfs1_file_read(lfs1, &orig, &data, 1);
            if (res < 0) {
                return res;
            }

            res = lfs1_file_write(lfs1, file, &data, 1);
            if (res < 0) {
                return res;
            }


            if (lfs1->rcache.block != 0xffffffff) {
                lfs1_cache_drop(lfs1, &orig.cache);
                lfs1_cache_drop(lfs1, &lfs1->rcache);
            }
        }


        while (1) {
            int err = lfs1_cache_flush(lfs1, &file->cache, &lfs1->rcache);
            if (err) {
                if (err == LFS1_ERR_CORRUPT) {
                    goto relocate;
                }
                return err;
            }

            break;
relocate:
            err = lfs1_file_relocate(lfs1, file);
            if (err) {
                return err;
            }
        }


        file->head = file->block;
        file->size = file->pos;
        file->flags &= ~LFS1_F_WRITING;
        file->flags |= LFS1_F_DIRTY;

        file->pos = pos;
    }

    return 0;
}
