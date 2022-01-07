
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CommitTsCtl ;
 int SimpleLruFlush (int ,int) ;
 int fsync_fname (char*,int) ;

void
CheckPointCommitTs(void)
{

 SimpleLruFlush(CommitTsCtl, 1);





 fsync_fname("pg_commit_ts", 1);
}
