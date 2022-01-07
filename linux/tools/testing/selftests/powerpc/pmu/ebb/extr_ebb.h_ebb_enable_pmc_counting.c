
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* pmc_enable; } ;


 size_t PMC_INDEX (int) ;
 TYPE_1__ ebb_state ;

__attribute__((used)) static inline void ebb_enable_pmc_counting(int pmc)
{
 ebb_state.pmc_enable[PMC_INDEX(pmc)] = 1;
}
