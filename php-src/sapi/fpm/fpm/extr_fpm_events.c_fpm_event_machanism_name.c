
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 TYPE_1__* module ;

const char *fpm_event_machanism_name()
{
 return module ? module->name : ((void*)0);
}
