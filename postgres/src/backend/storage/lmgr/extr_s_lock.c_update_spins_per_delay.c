
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spins_per_delay ;

int
update_spins_per_delay(int shared_spins_per_delay)
{
 return (shared_spins_per_delay * 15 + spins_per_delay) / 16;
}
