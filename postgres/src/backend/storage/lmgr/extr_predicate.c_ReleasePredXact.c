
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int availableList; } ;
struct TYPE_3__ {int link; } ;
typedef int SERIALIZABLEXACT ;
typedef TYPE_1__* PredXactListElement ;


 int Assert (int ) ;
 TYPE_2__* PredXact ;
 int PredXactListElementData ;
 int SHMQueueDelete (int *) ;
 int SHMQueueInsertBefore (int *,int *) ;
 int ShmemAddrIsValid (int *) ;
 int * link ;
 char* offsetof (int ,int *) ;

__attribute__((used)) static void
ReleasePredXact(SERIALIZABLEXACT *sxact)
{
 PredXactListElement ptle;

 Assert(ShmemAddrIsValid(sxact));

 ptle = (PredXactListElement)
  (((char *) sxact)
   - offsetof(PredXactListElementData, sxact)
   + offsetof(PredXactListElementData, link));
 SHMQueueDelete(&ptle->link);
 SHMQueueInsertBefore(&PredXact->availableList, &ptle->link);
}
