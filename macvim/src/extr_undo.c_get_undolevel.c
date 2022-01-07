
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ b_p_ul; } ;


 scalar_t__ NO_LOCAL_UNDOLEVEL ;
 TYPE_1__* curbuf ;
 long p_ul ;

__attribute__((used)) static long
get_undolevel()
{
    if (curbuf->b_p_ul == NO_LOCAL_UNDOLEVEL)
 return p_ul;
    return curbuf->b_p_ul;
}
