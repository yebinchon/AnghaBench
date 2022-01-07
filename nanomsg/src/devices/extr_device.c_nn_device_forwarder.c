
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_device_forwarder_args {scalar_t__ rc; int err; int s2; int s1; int device; } ;


 scalar_t__ nn_device_mvmsg (int ,int ,int ,int ) ;
 int nn_errno () ;
 scalar_t__ nn_slow (int) ;

__attribute__((used)) static void nn_device_forwarder (void *a)
{
    struct nn_device_forwarder_args *args = a;
    for (;;) {
        args->rc = nn_device_mvmsg (args->device, args->s1, args->s2, 0);
        if (nn_slow (args->rc < 0)) {
            args->err = nn_errno ();
            return;
        }
    }
}
