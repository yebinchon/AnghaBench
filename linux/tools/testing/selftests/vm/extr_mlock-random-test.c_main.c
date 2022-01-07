
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLOCK_OUTOF_LIMIT_SIZE ;
 int MLOCK_RLIMIT_SIZE ;
 int MLOCK_WITHIN_LIMIT_SIZE ;
 int free (char*) ;
 char* malloc (int ) ;
 int munlock (char*,int ) ;
 int perror (char*) ;
 scalar_t__ set_cap_limits (int ) ;
 int test_mlock_outof_limit (char*,int ) ;
 int test_mlock_within_limit (char*,int ) ;

int main(int argc, char **argv)
{
 char *p = ((void*)0);
 int ret = 0;

 if (set_cap_limits(MLOCK_RLIMIT_SIZE))
  return -1;

 p = malloc(MLOCK_WITHIN_LIMIT_SIZE);
 if (p == ((void*)0)) {
  perror("malloc() failure\n");
  return -1;
 }
 ret = test_mlock_within_limit(p, MLOCK_WITHIN_LIMIT_SIZE);
 if (ret)
  return ret;
 munlock(p, MLOCK_WITHIN_LIMIT_SIZE);
 free(p);


 p = malloc(MLOCK_OUTOF_LIMIT_SIZE);
 if (p == ((void*)0)) {
  perror("malloc() failure\n");
  return -1;
 }
 ret = test_mlock_outof_limit(p, MLOCK_OUTOF_LIMIT_SIZE);
 if (ret)
  return ret;
 munlock(p, MLOCK_OUTOF_LIMIT_SIZE);
 free(p);

 return 0;
}
