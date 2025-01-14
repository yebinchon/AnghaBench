
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_24__ {int deorphaned; } ;
typedef TYPE_4__ lfs1_t ;
struct TYPE_21__ {int dir; } ;
struct TYPE_22__ {scalar_t__ type; TYPE_1__ u; } ;
struct TYPE_25__ {TYPE_2__ d; } ;
typedef TYPE_5__ lfs1_entry_t ;
struct TYPE_23__ {int size; int * tail; } ;
struct TYPE_26__ {TYPE_3__ d; int pair; } ;
typedef TYPE_6__ lfs1_dir_t ;


 int LFS1_ASSERT (int) ;
 int LFS1_ERR_NOTEMPTY ;
 scalar_t__ LFS1_TYPE_DIR ;
 int lfs1_deorphan (TYPE_4__*) ;
 int lfs1_dir_commit (TYPE_4__*,TYPE_6__*,int *,int ) ;
 int lfs1_dir_fetch (TYPE_4__*,TYPE_6__*,int ) ;
 int lfs1_dir_find (TYPE_4__*,TYPE_6__*,TYPE_5__*,char const**) ;
 int lfs1_dir_remove (TYPE_4__*,TYPE_6__*,TYPE_5__*) ;
 int lfs1_pred (TYPE_4__*,int ,TYPE_6__*) ;

int lfs1_remove(lfs1_t *lfs1, const char *path) {

    if (!lfs1->deorphaned) {
        int err = lfs1_deorphan(lfs1);
        if (err) {
            return err;
        }
    }

    lfs1_dir_t cwd;
    lfs1_entry_t entry;
    int err = lfs1_dir_find(lfs1, &cwd, &entry, &path);
    if (err) {
        return err;
    }

    lfs1_dir_t dir;
    if (entry.d.type == LFS1_TYPE_DIR) {



        err = lfs1_dir_fetch(lfs1, &dir, entry.d.u.dir);
        if (err) {
            return err;
        } else if (dir.d.size != sizeof(dir.d)+4) {
            return LFS1_ERR_NOTEMPTY;
        }
    }


    err = lfs1_dir_remove(lfs1, &cwd, &entry);
    if (err) {
        return err;
    }


    if (entry.d.type == LFS1_TYPE_DIR) {
        int res = lfs1_pred(lfs1, dir.pair, &cwd);
        if (res < 0) {
            return res;
        }

        LFS1_ASSERT(res);
        cwd.d.tail[0] = dir.d.tail[0];
        cwd.d.tail[1] = dir.d.tail[1];

        err = lfs1_dir_commit(lfs1, &cwd, ((void*)0), 0);
        if (err) {
            return err;
        }
    }

    return 0;
}
