
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;


 int gc_free (struct gc_arena*) ;

__attribute__((used)) static inline void
gc_reset(struct gc_arena *a)
{
    gc_free(a);
}
