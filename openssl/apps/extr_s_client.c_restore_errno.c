
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int saved_errno ;

__attribute__((used)) static int restore_errno(void)
{
    int ret = errno;
    errno = saved_errno;
    return ret;
}
