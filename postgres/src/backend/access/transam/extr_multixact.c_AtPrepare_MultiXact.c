
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiXactId ;


 scalar_t__ MultiXactIdIsValid (int ) ;
 size_t MyBackendId ;
 int * OldestMemberMXactId ;
 int RegisterTwoPhaseRecord (int ,int ,int *,int) ;
 int TWOPHASE_RM_MULTIXACT_ID ;

void
AtPrepare_MultiXact(void)
{
 MultiXactId myOldestMember = OldestMemberMXactId[MyBackendId];

 if (MultiXactIdIsValid(myOldestMember))
  RegisterTwoPhaseRecord(TWOPHASE_RM_MULTIXACT_ID, 0,
          &myOldestMember, sizeof(MultiXactId));
}
