
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_20__ {int* root; int rcache; TYPE_5__* files; } ;
typedef TYPE_4__ lfs1_t ;
struct TYPE_21__ {int flags; int pos; int block; int cache; int size; int head; struct TYPE_21__* next; } ;
typedef TYPE_5__ lfs1_file_t ;
struct TYPE_17__ {int size; int head; } ;
struct TYPE_18__ {TYPE_1__ file; } ;
struct TYPE_16__ {int type; TYPE_2__ u; } ;
struct TYPE_22__ {TYPE_10__ d; } ;
typedef TYPE_6__ lfs1_entry_t ;
struct TYPE_19__ {int size; int* tail; } ;
struct TYPE_23__ {int off; TYPE_3__ d; int * pair; } ;
typedef TYPE_7__ lfs1_dir_t ;
typedef int lfs1_block_t ;


 int LFS1_F_DIRTY ;
 int LFS1_F_WRITING ;
 int LFS1_TYPE_REG ;
 int lfs1_bd_read (TYPE_4__*,int ,int,TYPE_10__*,int) ;
 int lfs1_ctz_traverse (TYPE_4__*,int *,int *,int ,int ,int (*) (void*,lfs1_block_t),void*) ;
 int lfs1_dir_fetch (TYPE_4__*,TYPE_7__*,int*) ;
 int lfs1_entry_fromle32 (TYPE_10__*) ;
 scalar_t__ lfs1_entry_size (TYPE_6__*) ;
 scalar_t__ lfs1_pairisnull (int*) ;

int lfs1_traverse(lfs1_t *lfs1, int (*cb)(void*, lfs1_block_t), void *data) {
    if (lfs1_pairisnull(lfs1->root)) {
        return 0;
    }


    lfs1_dir_t dir;
    lfs1_entry_t entry;
    lfs1_block_t cwd[2] = {0, 1};

    while (1) {
        for (int i = 0; i < 2; i++) {
            int err = cb(data, cwd[i]);
            if (err) {
                return err;
            }
        }

        int err = lfs1_dir_fetch(lfs1, &dir, cwd);
        if (err) {
            return err;
        }


        while (dir.off + sizeof(entry.d) <= (0x7fffffff & dir.d.size)-4) {
            err = lfs1_bd_read(lfs1, dir.pair[0], dir.off,
                    &entry.d, sizeof(entry.d));
            lfs1_entry_fromle32(&entry.d);
            if (err) {
                return err;
            }

            dir.off += lfs1_entry_size(&entry);
            if ((0x70 & entry.d.type) == (0x70 & LFS1_TYPE_REG)) {
                err = lfs1_ctz_traverse(lfs1, &lfs1->rcache, ((void*)0),
                        entry.d.u.file.head, entry.d.u.file.size, cb, data);
                if (err) {
                    return err;
                }
            }
        }

        cwd[0] = dir.d.tail[0];
        cwd[1] = dir.d.tail[1];

        if (lfs1_pairisnull(cwd)) {
            break;
        }
    }


    for (lfs1_file_t *f = lfs1->files; f; f = f->next) {
        if (f->flags & LFS1_F_DIRTY) {
            int err = lfs1_ctz_traverse(lfs1, &lfs1->rcache, &f->cache,
                    f->head, f->size, cb, data);
            if (err) {
                return err;
            }
        }

        if (f->flags & LFS1_F_WRITING) {
            int err = lfs1_ctz_traverse(lfs1, &lfs1->rcache, &f->cache,
                    f->block, f->pos, cb, data);
            if (err) {
                return err;
            }
        }
    }

    return 0;
}
