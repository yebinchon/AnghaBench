
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vld; } ;


 TYPE_1__* HTU_ENTRY (scalar_t__) ;
 scalar_t__ OAM_HTU_ENTRY_NUMBER ;

__attribute__((used)) static inline void clear_htu_entry(unsigned int queue)
{
 HTU_ENTRY(queue + OAM_HTU_ENTRY_NUMBER)->vld = 0;
}
