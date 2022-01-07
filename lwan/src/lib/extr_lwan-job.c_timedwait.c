
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int member_1; int member_0; } ;


 int gettimeofday (struct timeval*,int *) ;
 int job_wait_cond ;
 int job_wait_mutex ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;

__attribute__((used)) static void
timedwait(bool had_job)
{
    static int secs = 1;
    struct timeval now;

    if (had_job)
        secs = 1;
    else if (secs <= 15)
        secs++;

    gettimeofday(&now, ((void*)0));

    struct timespec rgtp = { now.tv_sec + secs, now.tv_usec * 1000 };
    pthread_cond_timedwait(&job_wait_cond, &job_wait_mutex, &rgtp);
}
