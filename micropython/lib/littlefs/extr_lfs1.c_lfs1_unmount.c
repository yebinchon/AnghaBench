
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs1_t ;


 int lfs1_deinit (int *) ;

int lfs1_unmount(lfs1_t *lfs1) {
    lfs1_deinit(lfs1);
    return 0;
}
