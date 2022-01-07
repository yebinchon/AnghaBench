
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* sxactIn; TYPE_1__* sxactOut; int inLink; } ;
struct TYPE_7__ {int possibleUnsafeConflicts; int flags; } ;
typedef TYPE_1__ SERIALIZABLEXACT ;
typedef TYPE_2__* RWConflict ;


 int Assert (int) ;
 int RWConflictData ;
 int ReleaseRWConflict (TYPE_2__*) ;
 scalar_t__ SHMQueueNext (int *,int *,int ) ;
 int SXACT_FLAG_RO_UNSAFE ;
 int SxactIsROSafe (TYPE_1__*) ;
 int SxactIsReadOnly (TYPE_1__*) ;
 int inLink ;
 int offsetof (int ,int ) ;

__attribute__((used)) static void
FlagSxactUnsafe(SERIALIZABLEXACT *sxact)
{
 RWConflict conflict,
    nextConflict;

 Assert(SxactIsReadOnly(sxact));
 Assert(!SxactIsROSafe(sxact));

 sxact->flags |= SXACT_FLAG_RO_UNSAFE;





 conflict = (RWConflict)
  SHMQueueNext(&sxact->possibleUnsafeConflicts,
      &sxact->possibleUnsafeConflicts,
      offsetof(RWConflictData, inLink));
 while (conflict)
 {
  nextConflict = (RWConflict)
   SHMQueueNext(&sxact->possibleUnsafeConflicts,
       &conflict->inLink,
       offsetof(RWConflictData, inLink));

  Assert(!SxactIsReadOnly(conflict->sxactOut));
  Assert(sxact == conflict->sxactIn);

  ReleaseRWConflict(conflict);

  conflict = nextConflict;
 }
}
