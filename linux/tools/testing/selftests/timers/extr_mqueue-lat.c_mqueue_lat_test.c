
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct mq_attr {int mq_msgsize; } ;
typedef scalar_t__ mqd_t ;
typedef int buf ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 scalar_t__ ETIMEDOUT ;
 int O_CREAT ;
 int O_RDONLY ;
 int TARGET_TIMEOUT ;
 int UNRESONABLE_LATENCY ;
 int clock_gettime (int ,struct timespec*) ;
 scalar_t__ errno ;
 int mq_close (scalar_t__) ;
 int mq_getattr (scalar_t__,struct mq_attr*) ;
 scalar_t__ mq_open (char*,int,int,int *) ;
 int mq_timedreceive (scalar_t__,char*,int,int *,struct timespec*) ;
 int perror (char*) ;
 struct timespec timespec_add (struct timespec,int) ;
 int timespec_sub (struct timespec,struct timespec) ;

int mqueue_lat_test(void)
{

 mqd_t q;
 struct mq_attr attr;
 struct timespec start, end, now, target;
 int i, count, ret;

 q = mq_open("/foo", O_CREAT | O_RDONLY, 0666, ((void*)0));
 if (q < 0) {
  perror("mq_open");
  return -1;
 }
 mq_getattr(q, &attr);


 count = 100;
 clock_gettime(CLOCK_MONOTONIC, &start);

 for (i = 0; i < count; i++) {
  char buf[attr.mq_msgsize];

  clock_gettime(CLOCK_REALTIME, &now);
  target = now;
  target = timespec_add(now, TARGET_TIMEOUT);

  ret = mq_timedreceive(q, buf, sizeof(buf), ((void*)0), &target);
  if (ret < 0 && errno != ETIMEDOUT) {
   perror("mq_timedreceive");
   return -1;
  }
 }
 clock_gettime(CLOCK_MONOTONIC, &end);

 mq_close(q);

 if ((timespec_sub(start, end)/count) > TARGET_TIMEOUT + UNRESONABLE_LATENCY)
  return -1;

 return 0;
}
