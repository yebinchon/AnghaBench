
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int NVIC_GET_PRIORITY (int) ;

int nvic_execution_priority(void)
{
 int priority=256;
 uint32_t primask, faultmask, basepri, ipsr;



 __asm__ volatile("mrs %0, faultmask\n" : "=r" (faultmask)::);
 if (faultmask) return -1;
 __asm__ volatile("mrs %0, primask\n" : "=r" (primask)::);
 if (primask) return 0;
 __asm__ volatile("mrs %0, ipsr\n" : "=r" (ipsr)::);
 if (ipsr) {
  if (ipsr < 16) priority = 0;
  else priority = NVIC_GET_PRIORITY(ipsr - 16);
 }
 __asm__ volatile("mrs %0, basepri\n" : "=r" (basepri)::);
 if (basepri > 0 && basepri < priority) priority = basepri;
 return priority;
}
