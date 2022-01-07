
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* locale; } ;


 TYPE_1__* obs ;

const char *obs_get_locale(void)
{
 return obs ? obs->locale : ((void*)0);
}
