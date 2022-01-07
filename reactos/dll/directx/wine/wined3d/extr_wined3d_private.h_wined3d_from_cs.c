
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_cs {scalar_t__ thread_id; scalar_t__ thread; } ;


 scalar_t__ GetCurrentThreadId () ;
 int assert (int) ;

__attribute__((used)) static inline void wined3d_from_cs(const struct wined3d_cs *cs)
{
    if (cs->thread)
        assert(cs->thread_id == GetCurrentThreadId());
}
