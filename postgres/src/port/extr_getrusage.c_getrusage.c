
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tms {int tms_cstime; int tms_cutime; int tms_stime; int tms_utime; } ;
struct TYPE_6__ {long tv_sec; long tv_usec; } ;
struct TYPE_5__ {long tv_sec; long tv_usec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
typedef int clock_t ;
struct TYPE_7__ {long QuadPart; } ;
typedef TYPE_3__ ULARGE_INTEGER ;
typedef int FILETIME ;


 int CLK_TCK ;
 int EFAULT ;
 int EINVAL ;
 int GetCurrentProcess () ;
 int GetLastError () ;
 scalar_t__ GetProcessTimes (int ,int *,int *,int *,int *) ;


 void* TICK_TO_SEC (int ,int) ;
 void* TICK_TO_USEC (int ,int) ;
 int _dosmaperr (int ) ;
 int errno ;
 int memcpy (TYPE_3__*,int *,int) ;
 int memset (struct rusage*,int ,int) ;
 scalar_t__ times (struct tms*) ;

int
getrusage(int who, struct rusage *rusage)
{
 struct tms tms;
 int tick_rate = CLK_TCK;
 clock_t u,
    s;

 if (rusage == (struct rusage *) ((void*)0))
 {
  errno = EFAULT;
  return -1;
 }
 if (times(&tms) < 0)
 {

  return -1;
 }
 switch (who)
 {
  case 128:
   u = tms.tms_utime;
   s = tms.tms_stime;
   break;
  case 129:
   u = tms.tms_cutime;
   s = tms.tms_cstime;
   break;
  default:
   errno = EINVAL;
   return -1;
 }


 rusage->ru_utime.tv_sec = ((u)/(tick_rate));
 rusage->ru_utime.tv_usec = (((u)%(tick_rate)*1000000)/tick_rate);
 rusage->ru_stime.tv_sec = ((s)/(tick_rate));
 rusage->ru_stime.tv_usec = (((u)%(tick_rate)*1000000)/tick_rate);


 return 0;
}
