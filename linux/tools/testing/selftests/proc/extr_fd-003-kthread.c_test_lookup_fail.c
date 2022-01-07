
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_SYMLINK_NOFOLLOW ;
 scalar_t__ ENOENT ;
 int assert (int) ;
 scalar_t__ errno ;
 int sys_statx (int,char const*,int ,int ,void*) ;

__attribute__((used)) static void test_lookup_fail(int fd, const char *pathname)
{
 char stx[256] __attribute__((aligned(8)));
 int rv;

 rv = sys_statx(fd, pathname, AT_SYMLINK_NOFOLLOW, 0, (void *)stx);
 assert(rv == -1 && errno == ENOENT);
}
