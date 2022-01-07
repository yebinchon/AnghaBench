
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int ProcSignalSlot ;


 int MemSet (int *,int ,int ) ;
 int ProcSignalShmemSize () ;
 int * ProcSignalSlots ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;

void
ProcSignalShmemInit(void)
{
 Size size = ProcSignalShmemSize();
 bool found;

 ProcSignalSlots = (ProcSignalSlot *)
  ShmemInitStruct("ProcSignalSlots", size, &found);


 if (!found)
  MemSet(ProcSignalSlots, 0, size);
}
