
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (int*) ;
 size_t nr_test_fds ;
 int pkey_assert (int) ;
 int* test_fds ;

void __save_test_fd(int fd)
{
 pkey_assert(fd >= 0);
 pkey_assert(nr_test_fds < ARRAY_SIZE(test_fds));
 test_fds[nr_test_fds] = fd;
 nr_test_fds++;
}
