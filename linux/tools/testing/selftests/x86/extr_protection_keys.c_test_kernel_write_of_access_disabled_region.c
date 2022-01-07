
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int dprintf1 (char*,int) ;
 int get_test_read_fd () ;
 int pkey_access_deny (int) ;
 int pkey_assert (int) ;
 int read (int,int*,int) ;

void test_kernel_write_of_access_disabled_region(int *ptr, u16 pkey)
{
 int ret;
 int test_fd = get_test_read_fd();

 dprintf1("disabling access to PKEY[%02d], "
   "having kernel read() to buffer\n", pkey);
 pkey_access_deny(pkey);
 ret = read(test_fd, ptr, 1);
 dprintf1("read ret: %d\n", ret);
 pkey_assert(ret);
}
