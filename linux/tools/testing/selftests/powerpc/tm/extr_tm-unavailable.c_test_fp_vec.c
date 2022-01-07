
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pthread_t ;
typedef int pthread_attr_t ;
struct TYPE_2__ {int touch_fp; int touch_vec; int result; } ;


 scalar_t__ DEBUG ;
 TYPE_1__ flags ;
 int pr_err (int,char*) ;
 int pr_warn (int,char*) ;
 int printf (char*) ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_join (int ,void**) ;
 int pthread_setname_np (int ,char*) ;
 int tm_una_ping ;

void test_fp_vec(int fp, int vec, pthread_attr_t *attr)
{
 int retries = 2;
 void *ret_value;
 pthread_t t0;

 flags.touch_fp = fp;
 flags.touch_vec = vec;
 do {
  int rc;


  rc = pthread_create(&t0, attr, tm_una_ping, (void *) &flags);
  if (rc)
   pr_err(rc, "pthread_create()");
  rc = pthread_setname_np(t0, "tm_una_ping");
  if (rc)
   pr_warn(rc, "pthread_setname_np");
  rc = pthread_join(t0, &ret_value);
  if (rc)
   pr_err(rc, "pthread_join");

  retries--;
 } while (ret_value != ((void*)0) && retries);

 if (!retries) {
  flags.result = 1;
  if (DEBUG)
   printf("All transactions failed unexpectedly\n");

 }
}
