
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int saved_errno ;

__attribute__((used)) static void save_errno(void)
{
    saved_errno = errno;
}
