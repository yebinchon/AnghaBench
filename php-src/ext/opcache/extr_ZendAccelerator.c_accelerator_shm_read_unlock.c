
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZCG (int ) ;
 int accel_deactivate_now () ;
 int counted ;

void accelerator_shm_read_unlock(void)
{
 if (!ZCG(counted)) {

  accel_deactivate_now();
 }
}
