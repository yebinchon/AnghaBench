
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IDirectInputDevice8A_iface; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ JoystickGenericImpl ;
typedef int IDirectInputDevice8A ;



__attribute__((used)) static inline IDirectInputDevice8A *IDirectInputDevice8A_from_impl(JoystickGenericImpl *This)
{
    return &This->base.IDirectInputDevice8A_iface;
}
