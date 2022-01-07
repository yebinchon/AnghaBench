
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int nr_test_fds ;
 int* test_fds ;

void close_test_fds(void)
{
 int i;

 for (i = 0; i < nr_test_fds; i++) {
  if (test_fds[i] < 0)
   continue;
  close(test_fds[i]);
  test_fds[i] = -1;
 }
 nr_test_fds = 0;
}
