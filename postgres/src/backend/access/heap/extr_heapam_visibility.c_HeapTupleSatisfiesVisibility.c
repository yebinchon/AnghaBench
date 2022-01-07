
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int snapshot_type; } ;
typedef TYPE_1__* Snapshot ;
typedef int HeapTuple ;
typedef int Buffer ;


 int HeapTupleSatisfiesAny (int ,TYPE_1__*,int ) ;
 int HeapTupleSatisfiesDirty (int ,TYPE_1__*,int ) ;
 int HeapTupleSatisfiesHistoricMVCC (int ,TYPE_1__*,int ) ;
 int HeapTupleSatisfiesMVCC (int ,TYPE_1__*,int ) ;
 int HeapTupleSatisfiesNonVacuumable (int ,TYPE_1__*,int ) ;
 int HeapTupleSatisfiesSelf (int ,TYPE_1__*,int ) ;
 int HeapTupleSatisfiesToast (int ,TYPE_1__*,int ) ;
bool
HeapTupleSatisfiesVisibility(HeapTuple tup, Snapshot snapshot, Buffer buffer)
{
 switch (snapshot->snapshot_type)
 {
  case 131:
   return HeapTupleSatisfiesMVCC(tup, snapshot, buffer);
   break;
  case 129:
   return HeapTupleSatisfiesSelf(tup, snapshot, buffer);
   break;
  case 134:
   return HeapTupleSatisfiesAny(tup, snapshot, buffer);
   break;
  case 128:
   return HeapTupleSatisfiesToast(tup, snapshot, buffer);
   break;
  case 133:
   return HeapTupleSatisfiesDirty(tup, snapshot, buffer);
   break;
  case 132:
   return HeapTupleSatisfiesHistoricMVCC(tup, snapshot, buffer);
   break;
  case 130:
   return HeapTupleSatisfiesNonVacuumable(tup, snapshot, buffer);
   break;
 }

 return 0;
}
