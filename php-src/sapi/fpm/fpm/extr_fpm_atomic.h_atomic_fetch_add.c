
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;
typedef int atomic_int_t ;



__attribute__((used)) static inline atomic_int_t atomic_fetch_add(atomic_t *value, atomic_int_t add)
{
 __asm__ volatile ( "lock;" "xaddq %0, %1;" :
  "+r" (add) : "m" (*value) : "memory");

 return add;
}
