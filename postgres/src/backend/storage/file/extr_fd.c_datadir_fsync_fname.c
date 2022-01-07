
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsync_fname_ext (char const*,int,int,int) ;

__attribute__((used)) static void
datadir_fsync_fname(const char *fname, bool isdir, int elevel)
{




 fsync_fname_ext(fname, isdir, 1, elevel);
}
