
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsync_fname ;
 int pre_sync_fname ;
 int walkdir (char const*,int ,int) ;

void
fsync_dir_recurse(const char *dir)
{
 walkdir(dir, fsync_fname, 0);
}
