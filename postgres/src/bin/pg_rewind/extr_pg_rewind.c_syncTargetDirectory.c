
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_VERSION_NUM ;
 int datadir_target ;
 int do_sync ;
 scalar_t__ dry_run ;
 int fsync_pgdata (int ,int ) ;

__attribute__((used)) static void
syncTargetDirectory(void)
{
 if (!do_sync || dry_run)
  return;

 fsync_pgdata(datadir_target, PG_VERSION_NUM);
}
