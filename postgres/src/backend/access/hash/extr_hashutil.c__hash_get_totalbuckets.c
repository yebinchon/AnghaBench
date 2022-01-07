
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int HASH_SPLITPOINT_GROUPS_WITH_ONE_PHASE ;
 int HASH_SPLITPOINT_PHASE_BITS ;
 int HASH_SPLITPOINT_PHASE_MASK ;

uint32
_hash_get_totalbuckets(uint32 splitpoint_phase)
{
 uint32 splitpoint_group;
 uint32 total_buckets;
 uint32 phases_within_splitpoint_group;

 if (splitpoint_phase < HASH_SPLITPOINT_GROUPS_WITH_ONE_PHASE)
  return (1 << splitpoint_phase);


 splitpoint_group = HASH_SPLITPOINT_GROUPS_WITH_ONE_PHASE;
 splitpoint_group +=
  ((splitpoint_phase - HASH_SPLITPOINT_GROUPS_WITH_ONE_PHASE) >>
   HASH_SPLITPOINT_PHASE_BITS);


 total_buckets = (1 << (splitpoint_group - 1));


 phases_within_splitpoint_group =
  (((splitpoint_phase - HASH_SPLITPOINT_GROUPS_WITH_ONE_PHASE) &
    HASH_SPLITPOINT_PHASE_MASK) + 1);
 total_buckets +=
  (((1 << (splitpoint_group - 1)) >> HASH_SPLITPOINT_PHASE_BITS) *
   phases_within_splitpoint_group);

 return total_buckets;
}
