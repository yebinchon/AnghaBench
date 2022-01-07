
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WorkerInfoData ;
typedef int Size ;
typedef int AutoVacuumShmemStruct ;


 int MAXALIGN (int) ;
 int add_size (int,int ) ;
 int autovacuum_max_workers ;
 int mul_size (int ,int) ;

Size
AutoVacuumShmemSize(void)
{
 Size size;




 size = sizeof(AutoVacuumShmemStruct);
 size = MAXALIGN(size);
 size = add_size(size, mul_size(autovacuum_max_workers,
           sizeof(WorkerInfoData)));
 return size;
}
