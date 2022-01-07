
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_getcpu ;
 long syscall (int ,unsigned int*,unsigned int*,void*) ;

__attribute__((used)) static inline long sys_getcpu(unsigned * cpu, unsigned * node,
         void* cache)
{
 return syscall(SYS_getcpu, cpu, node, cache);
}
