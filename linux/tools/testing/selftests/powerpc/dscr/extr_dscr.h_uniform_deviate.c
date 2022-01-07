
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double RAND_MAX ;

double uniform_deviate(int seed)
{
 return seed * (1.0 / (RAND_MAX + 1.0));
}
