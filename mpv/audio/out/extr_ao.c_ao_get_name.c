
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao {TYPE_1__* driver; } ;
struct TYPE_2__ {char const* name; } ;



const char *ao_get_name(struct ao *ao)
{
    return ao->driver->name;
}
