
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int dummy; } ;
struct nn_device_recipe {int dummy; } ;
struct nn_device_forwarder_args {int s1; int s2; scalar_t__ rc; int err; struct nn_device_recipe* device; } ;


 int errno ;
 int nn_device_forwarder ;
 int nn_thread_init (struct nn_thread*,int ,struct nn_device_forwarder_args*) ;
 int nn_thread_term (struct nn_thread*) ;

int nn_device_twoway (struct nn_device_recipe *device, int s1, int s2)
{
    struct nn_thread t1;
    struct nn_thread t2;
    struct nn_device_forwarder_args a1;
    struct nn_device_forwarder_args a2;

    a1.device = device;
    a1.s1 = s1;
    a1.s2 = s2;

    a2.device = device;
    a2.s1 = s2;
    a2.s2 = s1;

    nn_thread_init (&t1, nn_device_forwarder, &a1);
    nn_thread_init (&t2, nn_device_forwarder, &a2);

    nn_thread_term (&t1);
    nn_thread_term (&t2);

    if (a1.rc != 0) {
        errno = a1.err;
        return (a1.rc);
    }
    errno = a2.err;
    return a2.rc;
}
