
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_mlock2 ;
 int errno ;
 int syscall (int ,void*,size_t,int) ;

__attribute__((used)) static int mlock2_(void *start, size_t len, int flags)
{



 errno = ENOSYS;
 return -1;

}
