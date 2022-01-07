
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_23__ {int deorphaned; } ;
typedef TYPE_4__ lfs1_t ;
struct TYPE_20__ {int * dir; } ;
struct TYPE_21__ {int elen; TYPE_1__ u; int nlen; scalar_t__ alen; int type; } ;
struct TYPE_24__ {TYPE_2__ d; } ;
typedef TYPE_5__ lfs1_entry_t ;
struct TYPE_22__ {int * tail; } ;
struct TYPE_25__ {int * pair; TYPE_3__ d; } ;
typedef TYPE_6__ lfs1_dir_t ;


 int LFS1_ERR_EXIST ;
 int LFS1_ERR_NOENT ;
 int LFS1_TYPE_DIR ;
 int lfs1_alloc_ack (TYPE_4__*) ;
 int lfs1_deorphan (TYPE_4__*) ;
 int lfs1_dir_alloc (TYPE_4__*,TYPE_6__*) ;
 int lfs1_dir_append (TYPE_4__*,TYPE_6__*,TYPE_5__*,char const*) ;
 int lfs1_dir_commit (TYPE_4__*,TYPE_6__*,int *,int ) ;
 int lfs1_dir_find (TYPE_4__*,TYPE_6__*,TYPE_5__*,char const**) ;
 int * strchr (char const*,char) ;
 int strlen (char const*) ;

int lfs1_mkdir(lfs1_t *lfs1, const char *path) {

    if (!lfs1->deorphaned) {
        int err = lfs1_deorphan(lfs1);
        if (err) {
            return err;
        }
    }


    lfs1_dir_t cwd;
    lfs1_entry_t entry;
    int err = lfs1_dir_find(lfs1, &cwd, &entry, &path);
    if (err != LFS1_ERR_NOENT || strchr(path, '/') != ((void*)0)) {
        return err ? err : LFS1_ERR_EXIST;
    }


    lfs1_alloc_ack(lfs1);

    lfs1_dir_t dir;
    err = lfs1_dir_alloc(lfs1, &dir);
    if (err) {
        return err;
    }
    dir.d.tail[0] = cwd.d.tail[0];
    dir.d.tail[1] = cwd.d.tail[1];

    err = lfs1_dir_commit(lfs1, &dir, ((void*)0), 0);
    if (err) {
        return err;
    }

    entry.d.type = LFS1_TYPE_DIR;
    entry.d.elen = sizeof(entry.d) - 4;
    entry.d.alen = 0;
    entry.d.nlen = strlen(path);
    entry.d.u.dir[0] = dir.pair[0];
    entry.d.u.dir[1] = dir.pair[1];

    cwd.d.tail[0] = dir.pair[0];
    cwd.d.tail[1] = dir.pair[1];

    err = lfs1_dir_append(lfs1, &cwd, &entry, path);
    if (err) {
        return err;
    }

    lfs1_alloc_ack(lfs1);
    return 0;
}
