
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;



__attribute__((used)) static inline __u64 load(void *addr)
{
 __u64 tmp;

 asm volatile("ld %0,0(%1)" : "=r"(tmp) : "b"(addr));

 return tmp;
}
