
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ char_u ;
struct TYPE_2__ {scalar_t__* b_p_ep; } ;


 scalar_t__ NUL ;
 TYPE_1__* curbuf ;
 scalar_t__* p_ep ;

char_u *
get_equalprg()
{
    if (*curbuf->b_p_ep == NUL)
 return p_ep;
    return curbuf->b_p_ep;
}
