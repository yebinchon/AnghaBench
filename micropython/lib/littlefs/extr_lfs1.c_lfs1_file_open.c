
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs1_t ;
typedef int lfs1_file_t ;


 int lfs1_file_opencfg (int *,int *,char const*,int,int *) ;

int lfs1_file_open(lfs1_t *lfs1, lfs1_file_t *file,
        const char *path, int flags) {
    return lfs1_file_opencfg(lfs1, file, path, flags, ((void*)0));
}
