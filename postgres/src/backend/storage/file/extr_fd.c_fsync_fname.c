
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int data_sync_elevel (int ) ;
 int fsync_fname_ext (char const*,int,int,int ) ;

void
fsync_fname(const char *fname, bool isdir)
{
 fsync_fname_ext(fname, isdir, 0, data_sync_elevel(ERROR));
}
