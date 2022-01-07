
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int * list_special; int * list; } ;



__attribute__((used)) static inline void
gc_init(struct gc_arena *a)
{
    a->list = ((void*)0);
    a->list_special = ((void*)0);
}
