
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* props; } ;
struct TYPE_13__ {int dwData; } ;
struct TYPE_12__ {int lDeadZone; } ;
struct TYPE_11__ {int lDeadZone; } ;
typedef TYPE_2__ ObjProps ;
typedef TYPE_3__* LPCDIPROPDWORD ;
typedef TYPE_4__ JoystickGenericImpl ;


 int remap_apply (TYPE_4__*,int,TYPE_2__*) ;
 int remap_init (TYPE_4__*,int,TYPE_2__*) ;

__attribute__((used)) static void remap_deadzone(JoystickGenericImpl *This, int obj, LPCDIPROPDWORD pd)
{
    ObjProps remap_props;
    remap_init(This, obj, &remap_props);

    remap_props.lDeadZone = pd->dwData;

    remap_apply(This, obj, &remap_props);


    This->props[obj].lDeadZone = pd->dwData;
}
