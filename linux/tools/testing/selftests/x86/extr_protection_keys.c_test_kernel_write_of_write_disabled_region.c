
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ DEBUG_LEVEL ;
 int dprintf1 (char*,int) ;
 int get_test_read_fd () ;
 int perror (char*) ;
 int pkey_assert (int) ;
 int pkey_write_deny (int ) ;
 int read (int,int*,int) ;

void test_kernel_write_of_write_disabled_region(int *ptr, u16 pkey)
{
 int ret;
 int test_fd = get_test_read_fd();

 pkey_write_deny(pkey);
 ret = read(test_fd, ptr, 100);
 dprintf1("read ret: %d\n", ret);
 if (ret < 0 && (DEBUG_LEVEL > 0))
  perror("verbose read result (OK for this to be bad)");
 pkey_assert(ret);
}
