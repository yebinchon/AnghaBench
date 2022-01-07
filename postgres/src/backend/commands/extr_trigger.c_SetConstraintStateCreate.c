
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numalloc; } ;
typedef int SetConstraintTriggerData ;
typedef TYPE_1__* SetConstraintState ;


 scalar_t__ MemoryContextAllocZero (int ,scalar_t__) ;
 int SetConstraintStateData ;
 int TopTransactionContext ;
 scalar_t__ offsetof (int ,int ) ;
 int trigstates ;

__attribute__((used)) static SetConstraintState
SetConstraintStateCreate(int numalloc)
{
 SetConstraintState state;


 if (numalloc <= 0)
  numalloc = 1;




 state = (SetConstraintState)
  MemoryContextAllocZero(TopTransactionContext,
          offsetof(SetConstraintStateData, trigstates) +
          numalloc * sizeof(SetConstraintTriggerData));

 state->numalloc = numalloc;

 return state;
}
