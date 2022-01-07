
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *clockstring(int clockid)
{
 switch (clockid) {
 case 132:
  return "CLOCK_REALTIME";
 case 136:
  return "CLOCK_MONOTONIC";
 case 133:
  return "CLOCK_PROCESS_CPUTIME_ID";
 case 128:
  return "CLOCK_THREAD_CPUTIME_ID";
 case 134:
  return "CLOCK_MONOTONIC_RAW";
 case 130:
  return "CLOCK_REALTIME_COARSE";
 case 135:
  return "CLOCK_MONOTONIC_COARSE";
 case 138:
  return "CLOCK_BOOTTIME";
 case 131:
  return "CLOCK_REALTIME_ALARM";
 case 137:
  return "CLOCK_BOOTTIME_ALARM";
 case 129:
  return "CLOCK_TAI";
 };
 return "UNKNOWN_CLOCKID";
}
