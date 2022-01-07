
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ PULSEIN_LOOPS_PER_USEC ;
 scalar_t__ micros () ;

uint32_t pulseIn_high(volatile uint8_t *reg, uint32_t timeout)
{
 uint32_t timeout_count = timeout * PULSEIN_LOOPS_PER_USEC;
 uint32_t usec_start, usec_stop;


 while (*reg) {
  if (--timeout_count == 0) return 0;
 }

 while (!*reg) {
  if (--timeout_count == 0) return 0;
 }
 usec_start = micros();

 while (*reg) {
  if (--timeout_count == 0) return 0;
 }
 usec_stop = micros();
 return usec_stop - usec_start;
}
