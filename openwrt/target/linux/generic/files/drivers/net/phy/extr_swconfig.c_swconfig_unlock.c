
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_unlock (int *) ;
 int swdevs_lock ;

__attribute__((used)) static inline void
swconfig_unlock(void)
{
 mutex_unlock(&swdevs_lock);
}
