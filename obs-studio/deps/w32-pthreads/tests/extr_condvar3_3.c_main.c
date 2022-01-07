
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {long tv_sec; int tv_nsec; int member_1; int member_0; } ;
struct TYPE_3__ {int const millitm; scalar_t__ time; } ;
typedef TYPE_1__ PTW32_STRUCT_TIMEB ;
typedef int DWORD ;


 int ETIMEDOUT ;
 int PTW32_FTIME (TYPE_1__*) ;
 int assert (int) ;
 int cnd ;
 int mtx ;
 scalar_t__ pthread_cond_init (int *,int ) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 scalar_t__ pthread_mutex_init (int *,int ) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

int main()
{
   int rc;

   struct timespec abstime = { 0, 0 };
   PTW32_STRUCT_TIMEB currSysTime;
   const DWORD NANOSEC_PER_MILLISEC = 1000000;

   assert(pthread_cond_init(&cnd, 0) == 0);
   assert(pthread_mutex_init(&mtx, 0) == 0);


   PTW32_FTIME(&currSysTime);

   abstime.tv_sec = (long)currSysTime.time;
   abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;
   abstime.tv_sec += 1;



   assert(pthread_mutex_lock(&mtx) == 0);

   assert((rc = pthread_cond_timedwait(&cnd, &mtx, &abstime)) == ETIMEDOUT);

   assert(pthread_mutex_unlock(&mtx) == 0);







   assert((rc = pthread_cond_signal(&cnd)) == 0);



   assert(pthread_mutex_lock(&mtx) == 0);

   abstime.tv_sec = (long)currSysTime.time;
   abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;
   abstime.tv_sec += 1;

   assert((rc = pthread_cond_timedwait(&cnd, &mtx, &abstime)) == ETIMEDOUT);

   assert(pthread_mutex_unlock(&mtx) == 0);

   return 0;
}
