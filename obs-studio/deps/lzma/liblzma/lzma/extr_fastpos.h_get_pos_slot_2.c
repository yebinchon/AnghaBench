
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ FULL_DISTANCES ;
 scalar_t__ FULL_DISTANCES_BITS ;
 int assert (int) ;
 scalar_t__ fastpos_limit (scalar_t__,int) ;
 scalar_t__ fastpos_result (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static inline uint32_t
get_pos_slot_2(uint32_t pos)
{
 assert(pos >= FULL_DISTANCES);

 if (pos < fastpos_limit(FULL_DISTANCES_BITS - 1, 0))
  return fastpos_result(pos, FULL_DISTANCES_BITS - 1, 0);

 if (pos < fastpos_limit(FULL_DISTANCES_BITS - 1, 1))
  return fastpos_result(pos, FULL_DISTANCES_BITS - 1, 1);

 return fastpos_result(pos, FULL_DISTANCES_BITS - 1, 2);
}
