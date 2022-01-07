
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int fsec_t ;


 int USECS_PER_HOUR ;
 int USECS_PER_MINUTE ;
 int USECS_PER_SEC ;

void
dt2time(double jd, int *hour, int *min, int *sec, fsec_t *fsec)
{
 int64 time;

 time = jd;
 *hour = time / USECS_PER_HOUR;
 time -= (*hour) * USECS_PER_HOUR;
 *min = time / USECS_PER_MINUTE;
 time -= (*min) * USECS_PER_MINUTE;
 *sec = time / USECS_PER_SEC;
 *fsec = time - (*sec * USECS_PER_SEC);
}
