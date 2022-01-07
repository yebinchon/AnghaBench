
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ my_level; struct TYPE_3__* parent; } ;
typedef TYPE_1__ TransInvalidationInfo ;


 int Assert (int) ;
 scalar_t__ GetCurrentTransactionNestLevel () ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int TopTransactionContext ;
 TYPE_1__* transInvalInfo ;

__attribute__((used)) static void
PrepareInvalidationState(void)
{
 TransInvalidationInfo *myInfo;

 if (transInvalInfo != ((void*)0) &&
  transInvalInfo->my_level == GetCurrentTransactionNestLevel())
  return;

 myInfo = (TransInvalidationInfo *)
  MemoryContextAllocZero(TopTransactionContext,
          sizeof(TransInvalidationInfo));
 myInfo->parent = transInvalInfo;
 myInfo->my_level = GetCurrentTransactionNestLevel();





 Assert(transInvalInfo == ((void*)0) ||
     myInfo->my_level > transInvalInfo->my_level);

 transInvalInfo = myInfo;
}
