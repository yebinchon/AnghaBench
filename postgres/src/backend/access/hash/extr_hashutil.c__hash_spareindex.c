
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int HASH_SPLITPOINT_GROUPS_WITH_ONE_PHASE ;
 int HASH_SPLITPOINT_PHASE_BITS ;
 int HASH_SPLITPOINT_PHASE_MASK ;
 int _hash_log2 (int) ;

uint32
_hash_spareindex(uint32 num_bucket)
{
 uint32 splitpoint_group;
 uint32 splitpoint_phases;

 splitpoint_group = _hash_log2(num_bucket);

 if (splitpoint_group < HASH_SPLITPOINT_GROUPS_WITH_ONE_PHASE)
  return splitpoint_group;


 splitpoint_phases = HASH_SPLITPOINT_GROUPS_WITH_ONE_PHASE;


 splitpoint_phases +=
  ((splitpoint_group - HASH_SPLITPOINT_GROUPS_WITH_ONE_PHASE) <<
   HASH_SPLITPOINT_PHASE_BITS);


 splitpoint_phases +=
  (((num_bucket - 1) >>
    (splitpoint_group - (HASH_SPLITPOINT_PHASE_BITS + 1))) &
   HASH_SPLITPOINT_PHASE_MASK);

 return splitpoint_phases;
}
