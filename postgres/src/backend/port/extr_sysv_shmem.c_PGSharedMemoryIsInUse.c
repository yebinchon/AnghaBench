
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGShmemHeader ;
typedef int IpcMemoryState ;
typedef int IpcMemoryId ;


 int LOG ;
 int PGSharedMemoryAttach (int ,int *,int **) ;





 int elog (int ,char*,int *) ;
 scalar_t__ shmdt (int *) ;

bool
PGSharedMemoryIsInUse(unsigned long id1, unsigned long id2)
{
 PGShmemHeader *memAddress;
 IpcMemoryState state;

 state = PGSharedMemoryAttach((IpcMemoryId) id2, ((void*)0), &memAddress);
 if (memAddress && shmdt(memAddress) < 0)
  elog(LOG, "shmdt(%p) failed: %m", memAddress);
 switch (state)
 {
  case 130:
  case 129:
  case 128:
   return 0;
  case 132:
  case 131:
   return 1;
 }
 return 1;
}
