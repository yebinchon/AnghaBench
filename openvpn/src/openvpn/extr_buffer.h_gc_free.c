
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {scalar_t__ list_special; scalar_t__ list; } ;


 int x_gc_free (struct gc_arena*) ;
 int x_gc_freespecial (struct gc_arena*) ;

__attribute__((used)) static inline void
gc_free(struct gc_arena *a)
{
    if (a->list)
    {
        x_gc_free(a);
    }
    if (a->list_special)
    {
        x_gc_freespecial(a);
    }
}
