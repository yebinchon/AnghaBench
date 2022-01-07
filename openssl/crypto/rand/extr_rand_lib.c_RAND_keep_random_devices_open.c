
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RUN_ONCE (int *,int ) ;
 int do_rand_init ;
 int rand_init ;
 int rand_pool_keep_random_devices_open (int) ;

void RAND_keep_random_devices_open(int keep)
{
    if (RUN_ONCE(&rand_init, do_rand_init))
        rand_pool_keep_random_devices_open(keep);
}
