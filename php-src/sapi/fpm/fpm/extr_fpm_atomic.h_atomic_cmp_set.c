
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char atomic_uint_t ;
typedef int atomic_t ;



__attribute__((used)) static inline atomic_uint_t atomic_cmp_set(atomic_t *lock, atomic_uint_t old, atomic_uint_t set)
{
 unsigned char res;

 __asm__ volatile ( "lock;" "cmpxchgq %3, %1;" "sete %0;" :
  "=a" (res) : "m" (*lock), "a" (old), "r" (set) : "memory");

 return res;
}
