
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fd_set ;
struct TYPE_4__ {int isFree; int connection; } ;
typedef TYPE_1__ ParallelSlot ;
typedef int PGresult ;


 int Assert (int) ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int PQconsumeInput (int ) ;
 int * PQgetResult (int ) ;
 int PQisBusy (int ) ;
 int PQsocket (int ) ;
 int ResetCancelConn () ;
 int SetCancelConn (int ) ;
 int consumeQueryResult (int ) ;
 int processQueryResult (int ,int *) ;
 int select_loop (int,int *,int*) ;

ParallelSlot *
ParallelSlotsGetIdle(ParallelSlot *slots, int numslots)
{
 int i;
 int firstFree = -1;





 for (i = 0; i < numslots; i++)
 {
  if (slots[i].isFree)
  {
   slots[i].isFree = 0;
   return slots + i;
  }
 }





 while (firstFree < 0)
 {
  fd_set slotset;
  int maxFd = 0;
  bool aborting;


  FD_ZERO(&slotset);

  for (i = 0; i < numslots; i++)
  {
   int sock = PQsocket(slots[i].connection);





   if (sock < 0)
    continue;

   FD_SET(sock, &slotset);
   if (sock > maxFd)
    maxFd = sock;
  }

  SetCancelConn(slots->connection);
  i = select_loop(maxFd, &slotset, &aborting);
  ResetCancelConn();

  if (aborting)
  {




   consumeQueryResult(slots->connection);
   return ((void*)0);
  }
  Assert(i != 0);

  for (i = 0; i < numslots; i++)
  {
   int sock = PQsocket(slots[i].connection);

   if (sock >= 0 && FD_ISSET(sock, &slotset))
   {

    PQconsumeInput(slots[i].connection);
   }


   while (!PQisBusy(slots[i].connection))
   {
    PGresult *result = PQgetResult(slots[i].connection);

    if (result != ((void*)0))
    {

     if (!processQueryResult(slots[i].connection, result))
      return ((void*)0);
    }
    else
    {

     slots[i].isFree = 1;
     if (firstFree < 0)
      firstFree = i;
     break;
    }
   }
  }
 }

 slots[firstFree].isFree = 0;
 return slots + firstFree;
}
