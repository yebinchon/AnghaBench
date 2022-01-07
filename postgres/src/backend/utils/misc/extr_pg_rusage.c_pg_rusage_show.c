
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int result ;
struct TYPE_11__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_9__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_8__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_10__ {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
struct TYPE_12__ {TYPE_4__ tv; TYPE_3__ ru; } ;
typedef TYPE_5__ PGRUsage ;


 char* _ (char*) ;
 int pg_rusage_init (TYPE_5__*) ;
 int snprintf (char*,int,char*,int,int,int,int,int,int) ;

const char *
pg_rusage_show(const PGRUsage *ru0)
{
 static char result[100];
 PGRUsage ru1;

 pg_rusage_init(&ru1);

 if (ru1.tv.tv_usec < ru0->tv.tv_usec)
 {
  ru1.tv.tv_sec--;
  ru1.tv.tv_usec += 1000000;
 }
 if (ru1.ru.ru_stime.tv_usec < ru0->ru.ru_stime.tv_usec)
 {
  ru1.ru.ru_stime.tv_sec--;
  ru1.ru.ru_stime.tv_usec += 1000000;
 }
 if (ru1.ru.ru_utime.tv_usec < ru0->ru.ru_utime.tv_usec)
 {
  ru1.ru.ru_utime.tv_sec--;
  ru1.ru.ru_utime.tv_usec += 1000000;
 }

 snprintf(result, sizeof(result),
    _("CPU: user: %d.%02d s, system: %d.%02d s, elapsed: %d.%02d s"),
    (int) (ru1.ru.ru_utime.tv_sec - ru0->ru.ru_utime.tv_sec),
    (int) (ru1.ru.ru_utime.tv_usec - ru0->ru.ru_utime.tv_usec) / 10000,
    (int) (ru1.ru.ru_stime.tv_sec - ru0->ru.ru_stime.tv_sec),
    (int) (ru1.ru.ru_stime.tv_usec - ru0->ru.ru_stime.tv_usec) / 10000,
    (int) (ru1.tv.tv_sec - ru0->tv.tv_sec),
    (int) (ru1.tv.tv_usec - ru0->tv.tv_usec) / 10000);

 return result;
}
