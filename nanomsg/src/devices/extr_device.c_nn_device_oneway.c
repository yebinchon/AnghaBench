
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_device_recipe {int dummy; } ;


 int nn_device_mvmsg (struct nn_device_recipe*,int,int,int ) ;
 scalar_t__ nn_slow (int) ;

int nn_device_oneway (struct nn_device_recipe *device, int s1, int s2)
{
    int rc;

    while (1) {
        rc = nn_device_mvmsg (device, s1, s2, 0);
        if (nn_slow (rc < 0))
            return -1;
    }
}
