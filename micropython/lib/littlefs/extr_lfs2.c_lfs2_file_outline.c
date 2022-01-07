
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lfs2_t ;
struct TYPE_4__ {int flags; int pos; int off; } ;
typedef TYPE_1__ lfs2_file_t ;


 int LFS2_F_INLINE ;
 int lfs2_alloc_ack (int *) ;
 int lfs2_file_relocate (int *,TYPE_1__*) ;

__attribute__((used)) static int lfs2_file_outline(lfs2_t *lfs2, lfs2_file_t *file) {
    file->off = file->pos;
    lfs2_alloc_ack(lfs2);
    int err = lfs2_file_relocate(lfs2, file);
    if (err) {
        return err;
    }

    file->flags &= ~LFS2_F_INLINE;
    return 0;
}
