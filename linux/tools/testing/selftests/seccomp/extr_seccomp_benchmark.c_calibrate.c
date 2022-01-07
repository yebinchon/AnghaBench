
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_REALTIME ;
 int printf (char*) ;
 unsigned long long timing (int ,unsigned long long) ;

unsigned long long calibrate(void)
{
 unsigned long long i;

 printf("Calibrating reasonable sample size...\n");

 for (i = 5; ; i++) {
  unsigned long long samples = 1 << i;


  if (timing(CLOCK_REALTIME, samples) / 1000000000ULL > 5)
   return samples;
 }
}
