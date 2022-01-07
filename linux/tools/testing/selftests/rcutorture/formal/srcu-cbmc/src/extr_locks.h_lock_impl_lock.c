
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_impl {int dummy; } ;


 int assume (int ) ;
 int lock_impl_trylock (struct lock_impl*) ;

__attribute__((used)) static inline void lock_impl_lock(struct lock_impl *lock)
{




 assume(lock_impl_trylock(lock));





}
