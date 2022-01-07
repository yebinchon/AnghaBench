
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; double tv_usec; } ;


 int OPS_FORMAT ;
 double USECS_SEC ;
 char* _ (int ) ;
 int printf (char*,double,double) ;

__attribute__((used)) static void
print_elapse(struct timeval start_t, struct timeval stop_t, int ops)
{
 double total_time = (stop_t.tv_sec - start_t.tv_sec) +
 (stop_t.tv_usec - start_t.tv_usec) * 0.000001;
 double per_second = ops / total_time;
 double avg_op_time_us = (total_time / ops) * USECS_SEC;

 printf(_(OPS_FORMAT), per_second, avg_op_time_us);
}
