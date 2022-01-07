
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long AFFINITY_MASK (unsigned long) ;
 unsigned long MPIDR_HWID_BITMASK ;

__attribute__((used)) static unsigned long psci_affinity_mask(unsigned long affinity_level)
{
 if (affinity_level <= 3)
  return MPIDR_HWID_BITMASK & AFFINITY_MASK(affinity_level);

 return 0;
}
