
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lfs1_t ;
typedef int lfs1_soff_t ;
struct TYPE_3__ {int flags; int size; int pos; } ;
typedef TYPE_1__ lfs1_file_t ;


 int LFS1_F_WRITING ;
 int lfs1_max (int ,int ) ;

lfs1_soff_t lfs1_file_size(lfs1_t *lfs1, lfs1_file_t *file) {
    (void)lfs1;
    if (file->flags & LFS1_F_WRITING) {
        return lfs1_max(file->pos, file->size);
    } else {
        return file->size;
    }
}
