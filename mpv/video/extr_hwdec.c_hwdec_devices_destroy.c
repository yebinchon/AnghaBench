
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwdec_devices {int lock; int load_api; int num_hwctxs; } ;


 int assert (int) ;
 int pthread_mutex_destroy (int *) ;
 int talloc_free (struct mp_hwdec_devices*) ;

void hwdec_devices_destroy(struct mp_hwdec_devices *devs)
{
    if (!devs)
        return;
    assert(!devs->num_hwctxs);
    assert(!devs->load_api);
    pthread_mutex_destroy(&devs->lock);
    talloc_free(devs);
}
