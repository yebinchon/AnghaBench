
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int outLink; TYPE_1__ const* sxactIn; } ;
struct TYPE_6__ {int outConflicts; int inConflicts; } ;
typedef TYPE_1__ SERIALIZABLEXACT ;
typedef TYPE_2__* RWConflict ;


 int Assert (int) ;
 int RWConflictData ;
 scalar_t__ SHMQueueEmpty (int *) ;
 scalar_t__ SHMQueueNext (int *,int *,int ) ;
 scalar_t__ SxactIsDoomed (TYPE_1__ const*) ;
 int offsetof (int ,int ) ;
 int outLink ;

__attribute__((used)) static bool
RWConflictExists(const SERIALIZABLEXACT *reader, const SERIALIZABLEXACT *writer)
{
 RWConflict conflict;

 Assert(reader != writer);


 if (SxactIsDoomed(reader)
  || SxactIsDoomed(writer)
  || SHMQueueEmpty(&reader->outConflicts)
  || SHMQueueEmpty(&writer->inConflicts))
  return 0;


 conflict = (RWConflict)
  SHMQueueNext(&reader->outConflicts,
      &reader->outConflicts,
      offsetof(RWConflictData, outLink));
 while (conflict)
 {
  if (conflict->sxactIn == writer)
   return 1;
  conflict = (RWConflict)
   SHMQueueNext(&reader->outConflicts,
       &conflict->outLink,
       offsetof(RWConflictData, outLink));
 }


 return 0;
}
