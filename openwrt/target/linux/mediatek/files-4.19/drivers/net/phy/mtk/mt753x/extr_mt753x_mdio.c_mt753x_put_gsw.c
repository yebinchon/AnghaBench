
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mt753x_devs_lock ;
 int mutex_unlock (int *) ;

void mt753x_put_gsw(void)
{
 mutex_unlock(&mt753x_devs_lock);
}
