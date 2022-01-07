
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IDirectInputDevice8W_iface; } ;
typedef TYPE_1__ IDirectInputDeviceImpl ;
typedef int IDirectInputDevice8W ;



__attribute__((used)) static inline IDirectInputDevice8W *IDirectInputDevice8W_from_impl(IDirectInputDeviceImpl *This)
{
    return &This->IDirectInputDevice8W_iface;
}
