
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint32 ;
typedef scalar_t__ MultiXactOffset ;


 scalar_t__ MULTIXACT_MEMBER_DANGER_THRESHOLD ;
 scalar_t__ MULTIXACT_MEMBER_SAFE_THRESHOLD ;
 int ReadMultiXactCounts (double*,scalar_t__*) ;
 int autovacuum_multixact_freeze_max_age ;

int
MultiXactMemberFreezeThreshold(void)
{
 MultiXactOffset members;
 uint32 multixacts;
 uint32 victim_multixacts;
 double fraction;


 if (!ReadMultiXactCounts(&multixacts, &members))
  return 0;


 if (members <= MULTIXACT_MEMBER_SAFE_THRESHOLD)
  return autovacuum_multixact_freeze_max_age;






 fraction = (double) (members - MULTIXACT_MEMBER_SAFE_THRESHOLD) /
  (MULTIXACT_MEMBER_DANGER_THRESHOLD - MULTIXACT_MEMBER_SAFE_THRESHOLD);
 victim_multixacts = multixacts * fraction;


 if (victim_multixacts > multixacts)
  return 0;
 return multixacts - victim_multixacts;
}
