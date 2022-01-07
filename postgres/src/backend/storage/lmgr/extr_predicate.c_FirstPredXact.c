
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int activeList; } ;
struct TYPE_3__ {int sxact; } ;
typedef int SERIALIZABLEXACT ;
typedef TYPE_1__* PredXactListElement ;


 TYPE_2__* PredXact ;
 int PredXactListElementData ;
 scalar_t__ SHMQueueNext (int *,int *,int ) ;
 int link ;
 int offsetof (int ,int ) ;

__attribute__((used)) static SERIALIZABLEXACT *
FirstPredXact(void)
{
 PredXactListElement ptle;

 ptle = (PredXactListElement)
  SHMQueueNext(&PredXact->activeList,
      &PredXact->activeList,
      offsetof(PredXactListElementData, link));
 if (!ptle)
  return ((void*)0);

 return &ptle->sxact;
}
