
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int * list; } ;



__attribute__((used)) static inline bool
gc_defined(struct gc_arena *a)
{
    return a->list != ((void*)0);
}
