
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; long long tv_usec; } ;
struct timespec {int tv_sec; long long tv_nsec; } ;
typedef int pthread_mutex_t ;
typedef int pthread_cond_t ;
typedef long long DWORD ;


 long long INFINITE ;
 int INT64_MAX ;
 long long INT_MAX ;
 int cond_wait (int *,int *,long long) ;
 int gettimeofday (struct timeval*,int *) ;

int pthread_cond_timedwait(pthread_cond_t *restrict cond,
                           pthread_mutex_t *restrict mutex,
                           const struct timespec *restrict abstime)
{

    struct timeval tv;
    gettimeofday(&tv, ((void*)0));
    DWORD timeout_ms = 0;
    if (abstime->tv_sec >= INT64_MAX / 10000) {
        timeout_ms = INFINITE;
    } else if (abstime->tv_sec >= tv.tv_sec) {
        long long msec = (abstime->tv_sec - tv.tv_sec) * 1000LL +
            abstime->tv_nsec / 1000LL / 1000LL - tv.tv_usec / 1000LL;
        if (msec > INT_MAX) {
            timeout_ms = INFINITE;
        } else if (msec > 0) {
            timeout_ms = msec;
        }
    }
    return cond_wait(cond, mutex, timeout_ms);
}
