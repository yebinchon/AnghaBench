
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALARM_INTERVAL_SECS ;
 int SIGALRM ;
 int abort () ;
 int alarm (int ) ;
 int test_uffdio_copy_eexist ;
 int test_uffdio_zeropage_eexist ;

__attribute__((used)) static void sigalrm(int sig)
{
 if (sig != SIGALRM)
  abort();
 test_uffdio_copy_eexist = 1;
 test_uffdio_zeropage_eexist = 1;
 alarm(ALARM_INTERVAL_SECS);
}
