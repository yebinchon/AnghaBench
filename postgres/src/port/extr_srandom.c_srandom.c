
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_srand48 (long) ;

void
srandom(unsigned int seed)
{
 pg_srand48((long int) seed);
}
