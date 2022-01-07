
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;


 scalar_t__ CORE_FILE_LIMIT ;
 int FAIL_IF (int) ;
 int RLIMIT_CORE ;
 int RLIMIT_FSIZE ;
 scalar_t__ RLIM_INFINITY ;
 int TEST_PASS ;
 int getrlimit (int ,struct rlimit*) ;
 int setrlimit (int ,struct rlimit*) ;

__attribute__((used)) static int increase_core_file_limit(void)
{
 struct rlimit rlim;
 int ret;

 ret = getrlimit(RLIMIT_CORE, &rlim);
 FAIL_IF(ret);

 if (rlim.rlim_cur != RLIM_INFINITY && rlim.rlim_cur < CORE_FILE_LIMIT) {
  rlim.rlim_cur = CORE_FILE_LIMIT;

  if (rlim.rlim_max != RLIM_INFINITY &&
      rlim.rlim_max < CORE_FILE_LIMIT)
   rlim.rlim_max = CORE_FILE_LIMIT;

  ret = setrlimit(RLIMIT_CORE, &rlim);
  FAIL_IF(ret);
 }

 ret = getrlimit(RLIMIT_FSIZE, &rlim);
 FAIL_IF(ret);

 if (rlim.rlim_cur != RLIM_INFINITY && rlim.rlim_cur < CORE_FILE_LIMIT) {
  rlim.rlim_cur = CORE_FILE_LIMIT;

  if (rlim.rlim_max != RLIM_INFINITY &&
      rlim.rlim_max < CORE_FILE_LIMIT)
   rlim.rlim_max = CORE_FILE_LIMIT;

  ret = setrlimit(RLIMIT_FSIZE, &rlim);
  FAIL_IF(ret);
 }

 return TEST_PASS;
}
