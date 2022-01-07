
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;
typedef enum aocontrol { ____Placeholder_aocontrol } aocontrol ;




 int CONTROL_UNKNOWN ;
 int get_volume (struct ao*,void*) ;
 int set_volume (struct ao*,void*) ;

__attribute__((used)) static int control(struct ao *ao, enum aocontrol cmd, void *arg)
{
    switch (cmd) {
    case 129:
        return get_volume(ao, arg);
    case 128:
        return set_volume(ao, arg);
    }
    return CONTROL_UNKNOWN;
}
