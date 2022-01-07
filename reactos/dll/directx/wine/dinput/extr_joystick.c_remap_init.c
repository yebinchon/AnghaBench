
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* props; } ;
struct TYPE_7__ {int lSaturation; int lDeadZone; int lMax; int lDevMax; int lMin; int lDevMin; } ;
struct TYPE_6__ {int lSaturation; int lDeadZone; int lMax; int lMin; } ;
typedef TYPE_2__ ObjProps ;
typedef TYPE_3__ JoystickGenericImpl ;



__attribute__((used)) static void remap_init(JoystickGenericImpl *This, int obj, ObjProps *remap_props)
{


    remap_props->lDevMin = remap_props->lMin = This->props[obj].lMin;
    remap_props->lDevMax = remap_props->lMax = This->props[obj].lMax;

    remap_props->lDeadZone = This->props[obj].lDeadZone;
    remap_props->lSaturation = This->props[obj].lSaturation;
}
