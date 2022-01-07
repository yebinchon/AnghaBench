
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int gs_timer_range_t ;


 int UNUSED_PARAMETER (int *) ;

bool gs_timer_range_get_data(gs_timer_range_t *range, bool *disjoint,
        uint64_t *frequency)
{
 UNUSED_PARAMETER(range);

 *disjoint = 0;
 *frequency = 1000000000;
 return 1;
}
