
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef int cpu_set_t ;
struct TYPE_2__ {scalar_t__ result; int exception; } ;


 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 int FP_UNA_EXCEPTION ;
 int NUM_EXCEPTIONS ;
 int SKIP_IF (int) ;
 int VEC_UNA_EXCEPTION ;
 int exit (int) ;
 TYPE_1__ flags ;
 int have_htm () ;
 int pr_err (int,char*) ;
 int pr_warn (int,char*) ;
 int printf (char*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setaffinity_np (int *,int,int *) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_setname_np (int ,char*) ;
 int test_fp_vec (int,int,int *) ;
 int tm_una_pong ;

int tm_unavailable_test(void)
{
 int rc, exception;
 pthread_t t1;
 pthread_attr_t attr;
 cpu_set_t cpuset;

 SKIP_IF(!have_htm());


 CPU_ZERO(&cpuset);
 CPU_SET(0, &cpuset);


 rc = pthread_attr_init(&attr);
 if (rc)
  pr_err(rc, "pthread_attr_init()");


 rc = pthread_attr_setaffinity_np(&attr, sizeof(cpu_set_t), &cpuset);
 if (rc)
  pr_err(rc, "pthread_attr_setaffinity_np()");

 rc = pthread_create(&t1, &attr , tm_una_pong, ((void*)0));
 if (rc)
  pr_err(rc, "pthread_create()");


 rc = pthread_setname_np(t1, "tm_una_pong");
 if (rc)
  pr_warn(rc, "pthread_create()");

 flags.result = 0;

 for (exception = 0; exception < NUM_EXCEPTIONS; exception++) {
  printf("Checking if FP/VEC registers are sane after");

  if (exception == FP_UNA_EXCEPTION)
   printf(" a FP unavailable exception...\n");

  else if (exception == VEC_UNA_EXCEPTION)
   printf(" a VEC unavailable exception...\n");

  else
   printf(" a VSX unavailable exception...\n");

  flags.exception = exception;

  test_fp_vec(0, 0, &attr);
  test_fp_vec(1, 0, &attr);
  test_fp_vec(0, 1, &attr);
  test_fp_vec(1, 1, &attr);

 }

 if (flags.result > 0) {
  printf("result: failed!\n");
  exit(1);
 } else {
  printf("result: success\n");
  exit(0);
 }
}
