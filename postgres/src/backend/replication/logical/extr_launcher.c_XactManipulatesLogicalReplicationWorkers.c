
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * on_commit_stop_workers ;

bool
XactManipulatesLogicalReplicationWorkers(void)
{
 return (on_commit_stop_workers != ((void*)0));
}
