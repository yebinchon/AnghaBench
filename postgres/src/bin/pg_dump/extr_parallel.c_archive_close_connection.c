
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pipeRevWrite; int pipeRevRead; TYPE_1__* AH; } ;
struct TYPE_6__ {int * AHX; scalar_t__ pstate; } ;
struct TYPE_5__ {int public; } ;
typedef TYPE_2__ ShutdownInformation ;
typedef TYPE_3__ ParallelSlot ;


 int DisconnectDatabase (int *) ;
 TYPE_3__* GetMyPSlot (scalar_t__) ;
 int ShutdownWorkersHard (scalar_t__) ;
 int closesocket (int ) ;

__attribute__((used)) static void
archive_close_connection(int code, void *arg)
{
 ShutdownInformation *si = (ShutdownInformation *) arg;

 if (si->pstate)
 {

  ParallelSlot *slot = GetMyPSlot(si->pstate);

  if (!slot)
  {




   ShutdownWorkersHard(si->pstate);

   if (si->AHX)
    DisconnectDatabase(si->AHX);
  }
  else
  {
   if (slot->AH)
    DisconnectDatabase(&(slot->AH->public));





  }
 }
 else
 {

  if (si->AHX)
   DisconnectDatabase(si->AHX);
 }
}
