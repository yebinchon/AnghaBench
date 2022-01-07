
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lfs1_t ;
typedef int lfs1_soff_t ;
struct TYPE_3__ {int pos; } ;
typedef TYPE_1__ lfs1_file_t ;



lfs1_soff_t lfs1_file_tell(lfs1_t *lfs1, lfs1_file_t *file) {
    (void)lfs1;
    return file->pos;
}
