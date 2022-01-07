
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_device_recipe {int dummy; } ;
typedef int op ;


 int AF_SP_RAW ;
 int EINVAL ;
 int NN_DOMAIN ;
 int NN_SOL_SOCKET ;
 int errno ;
 int nn_assert (int) ;
 int nn_device_mvmsg (struct nn_device_recipe*,int,int,int ) ;
 int nn_getsockopt (int,int ,int ,int*,size_t*) ;
 scalar_t__ nn_slow (int) ;

int nn_device_loopback (struct nn_device_recipe *device, int s)
{
    int rc;
    int op;
    size_t opsz;


    opsz = sizeof (op);
    rc = nn_getsockopt (s, NN_SOL_SOCKET, NN_DOMAIN, &op, &opsz);
    if (nn_slow (rc != 0))
        return -1;
    nn_assert (opsz == sizeof (op));
    if (op != AF_SP_RAW) {
        errno = EINVAL;
        return -1;
    }

    for (;;) {
        rc = nn_device_mvmsg (device, s, s, 0);
        if (nn_slow (rc < 0))
            return -1;
    }
}
