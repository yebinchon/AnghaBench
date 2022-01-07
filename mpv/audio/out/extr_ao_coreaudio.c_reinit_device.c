
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int device; } ;
struct ao {int device; struct priv* priv; } ;
typedef int OSStatus ;


 int CHECK_CA_ERROR (char*) ;
 int ca_select_device (struct ao*,int ,int *) ;

__attribute__((used)) static bool reinit_device(struct ao *ao) {
    struct priv *p = ao->priv;

    OSStatus err = ca_select_device(ao, ao->device, &p->device);
    CHECK_CA_ERROR("failed to select device");

    return 1;

coreaudio_error:
    return 0;
}
