
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_getcpu ;
 long syscall (int ,unsigned int*,unsigned int*,void*) ;

__attribute__((used)) static long sys_getcpu(unsigned * cpu, unsigned * node,
         void* cache)
{
 return syscall(__NR_getcpu, cpu, node, cache);
}
