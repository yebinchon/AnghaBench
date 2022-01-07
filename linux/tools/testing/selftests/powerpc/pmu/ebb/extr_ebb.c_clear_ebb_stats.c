
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stats; } ;


 TYPE_1__ ebb_state ;
 int memset (int *,int ,int) ;

void clear_ebb_stats(void)
{
 memset(&ebb_state.stats, 0, sizeof(ebb_state.stats));
}
