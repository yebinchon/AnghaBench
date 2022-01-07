
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_pkey_free ;
 int syscall (int ,int) ;

__attribute__((used)) static int sys_pkey_free(int pkey)
{
 return syscall(__NR_pkey_free, pkey);
}
