
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xmin; } ;
typedef TYPE_1__* Snapshot ;
typedef int HeapTuple ;
typedef int Buffer ;


 scalar_t__ HEAPTUPLE_DEAD ;
 scalar_t__ HeapTupleSatisfiesVacuum (int ,int ,int ) ;

__attribute__((used)) static bool
HeapTupleSatisfiesNonVacuumable(HeapTuple htup, Snapshot snapshot,
        Buffer buffer)
{
 return HeapTupleSatisfiesVacuum(htup, snapshot->xmin, buffer)
  != HEAPTUPLE_DEAD;
}
