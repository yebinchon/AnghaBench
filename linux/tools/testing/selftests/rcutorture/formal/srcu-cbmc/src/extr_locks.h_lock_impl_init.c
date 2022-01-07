
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_impl {int locked; } ;



__attribute__((used)) static inline void lock_impl_init(struct lock_impl *lock)
{
 lock->locked = 0;
}
