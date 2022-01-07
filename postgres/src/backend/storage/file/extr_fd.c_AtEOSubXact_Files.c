
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ create_subid; } ;
typedef scalar_t__ SubTransactionId ;
typedef size_t Index ;


 int FreeDesc (TYPE_1__*) ;
 TYPE_1__* allocatedDescs ;
 size_t numAllocatedDescs ;

void
AtEOSubXact_Files(bool isCommit, SubTransactionId mySubid,
      SubTransactionId parentSubid)
{
 Index i;

 for (i = 0; i < numAllocatedDescs; i++)
 {
  if (allocatedDescs[i].create_subid == mySubid)
  {
   if (isCommit)
    allocatedDescs[i].create_subid = parentSubid;
   else
   {

    FreeDesc(&allocatedDescs[i--]);
   }
  }
 }
}
