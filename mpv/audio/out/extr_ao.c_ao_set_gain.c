
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int gain; } ;


 int atomic_store (int *,float) ;

void ao_set_gain(struct ao *ao, float gain)
{
    atomic_store(&ao->gain, gain);
}
