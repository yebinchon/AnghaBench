
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int LogicalRepWorker ;
typedef int LogicalRepCtxStruct ;


 int MAXALIGN (int) ;
 int add_size (int,int ) ;
 int max_logical_replication_workers ;
 int mul_size (int ,int) ;

Size
ApplyLauncherShmemSize(void)
{
 Size size;




 size = sizeof(LogicalRepCtxStruct);
 size = MAXALIGN(size);
 size = add_size(size, mul_size(max_logical_replication_workers,
           sizeof(LogicalRepWorker)));
 return size;
}
