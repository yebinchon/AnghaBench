
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RAND_MAX ;
 scalar_t__ rand () ;

float rand_float(int positive_only)
{
 if (positive_only)
  return (float)((double)rand() / (double)RAND_MAX);
 else
  return (float)(((double)rand() / (double)RAND_MAX * 2.0) - 1.0);
}
