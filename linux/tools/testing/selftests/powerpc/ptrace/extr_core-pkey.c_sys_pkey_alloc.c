
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_pkey_alloc ;
 int syscall (int ,unsigned long,unsigned long) ;

__attribute__((used)) static int sys_pkey_alloc(unsigned long flags, unsigned long init_access_rights)
{
 return syscall(__NR_pkey_alloc, flags, init_access_rights);
}
