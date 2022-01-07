
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long InterlockedDecrement (long volatile*) ;

long ff_atomic_dec_long(volatile long *val)
{
 return InterlockedDecrement(val);
}
