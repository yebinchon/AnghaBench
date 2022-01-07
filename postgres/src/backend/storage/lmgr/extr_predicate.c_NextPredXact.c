
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int activeList; } ;
struct TYPE_3__ {int sxact; int link; } ;
typedef int SERIALIZABLEXACT ;
typedef TYPE_1__* PredXactListElement ;


 int Assert (int ) ;
 TYPE_2__* PredXact ;
 int PredXactListElementData ;
 scalar_t__ SHMQueueNext (int *,int *,char*) ;
 int ShmemAddrIsValid (int *) ;
 int * link ;
 char* offsetof (int ,int *) ;

__attribute__((used)) static SERIALIZABLEXACT *
NextPredXact(SERIALIZABLEXACT *sxact)
{
 PredXactListElement ptle;

 Assert(ShmemAddrIsValid(sxact));

 ptle = (PredXactListElement)
  (((char *) sxact)
   - offsetof(PredXactListElementData, sxact)
   + offsetof(PredXactListElementData, link));
 ptle = (PredXactListElement)
  SHMQueueNext(&PredXact->activeList,
      &ptle->link,
      offsetof(PredXactListElementData, link));
 if (!ptle)
  return ((void*)0);

 return &ptle->sxact;
}
